#include <time.h>
#include <stdio.h>
#include <x86intrin.h>
#include "simd.h"

long long int sum(int vals[NUM_ELEMS]) {
	clock_t start = clock();

	long long int sum = 0;
	for(unsigned int w = 0; w < OUTER_ITERATIONS; w++) {
		for(unsigned int i = 0; i < NUM_ELEMS; i++) {
			if(vals[i] >= 128) {
				sum += vals[i];
			}
		}
	}
	clock_t end = clock();
	printf("Time taken: %Lf s\n", (long double)(end - start) / CLOCKS_PER_SEC);
	return sum;
}

long long int sum_unrolled(int vals[NUM_ELEMS]) {
	clock_t start = clock();
	long long int sum = 0;

	for(unsigned int w = 0; w < OUTER_ITERATIONS; w++) {
		for(unsigned int i = 0; i < NUM_ELEMS / 4 * 4; i += 4) {
			if(vals[i] >= 128) sum += vals[i];
			if(vals[i + 1] >= 128) sum += vals[i + 1];
			if(vals[i + 2] >= 128) sum += vals[i + 2];
			if(vals[i + 3] >= 128) sum += vals[i + 3];
		}

		//This is what we call the TAIL CASE
		//For when NUM_ELEMS isn't a multiple of 4
		//NONTRIVIAL FACT: NUM_ELEMS / 4 * 4 is the largest multiple of 4 less than NUM_ELEMS
		for(unsigned int i = NUM_ELEMS / 4 * 4; i < NUM_ELEMS; i++) {
			if (vals[i] >= 128) {
				sum += vals[i];
			}
		}
	}
	clock_t end = clock();
	printf("Time taken: %Lf s\n", (long double)(end - start) / CLOCKS_PER_SEC);
	return sum;
}

long long int sum_simd(int vals[NUM_ELEMS]) {
	clock_t start = clock();
	__m128i _127 = _mm_set1_epi32(127);		// This is a vector with 127s in it... Why might you need this?
	long long int result = 0;				    // This is where you should put your final result!
	/* DO NOT WRITE ANYTHING ABOVE THIS LINE. */

	for(unsigned int w = 0; w < OUTER_ITERATIONS; w++) {
	    int temp_arr[4];
        __m128i sum = _mm_setzero_si128();      // returns a 128-bit zero vector

        for (unsigned int i = 0; i < NUM_ELEMS / 4 * 4; i+=4) {
            __m128i temp_vals, mask;

            temp_vals = _mm_loadu_si128((const __m128i_u *) &(vals[i]));
            mask = _mm_cmpgt_epi32(temp_vals, _127);
            temp_vals = _mm_and_si128(temp_vals, mask);

            sum = _mm_add_epi32(sum, temp_vals);
        }
        _mm_storeu_si128((__m128i_u *) temp_arr, sum);

        for(int i = 0; i < 4; ++i) {
            result += temp_arr[i];
        }

        /* Tail Case */
        for(unsigned int i = NUM_ELEMS / 4 * 4; i < NUM_ELEMS; i++) {
            if (vals[i] >= 128) {
                result += vals[i];
            }
        }
	}
	clock_t end = clock();
	printf("Time taken: %Lf s\n", (long double)(end - start) / CLOCKS_PER_SEC);
	return result;
}

long long int sum_simd_unrolled(int vals[NUM_ELEMS]) {
	clock_t start = clock();
	__m128i _127 = _mm_set1_epi32(127);
	long long int result = 0;
	for(unsigned int w = 0; w < OUTER_ITERATIONS; w++) {
        int temp_arr[4];
        __m128i sum = _mm_setzero_si128();      // returns a 128-bit zero vector

        for (unsigned int i = 0; i < NUM_ELEMS / 16 * 16; i+=16) {
            __m128i temp_vals, mask;

            /* First Iteration */
            temp_vals = _mm_loadu_si128((const __m128i_u *) &(vals[i]));
            mask = _mm_cmpgt_epi32(temp_vals, _127);
            temp_vals = _mm_and_si128(temp_vals, mask);

            sum = _mm_add_epi32(sum, temp_vals);

            /* Second Iteration */
            temp_vals = _mm_loadu_si128((const __m128i_u *) &(vals[i + 4]));
            mask = _mm_cmpgt_epi32(temp_vals, _127);
            temp_vals = _mm_and_si128(temp_vals, mask);

            sum = _mm_add_epi32(sum, temp_vals);

            /* Third Iteration */
            temp_vals = _mm_loadu_si128((const __m128i_u *) &(vals[i + 8]));
            mask = _mm_cmpgt_epi32(temp_vals, _127);
            temp_vals = _mm_and_si128(temp_vals, mask);

            sum = _mm_add_epi32(sum, temp_vals);

            /* Fourth Iteration */
            temp_vals = _mm_loadu_si128((const __m128i_u *) &(vals[i + 12]));
            mask = _mm_cmpgt_epi32(temp_vals, _127);
            temp_vals = _mm_and_si128(temp_vals, mask);

            sum = _mm_add_epi32(sum, temp_vals);
        }
        _mm_storeu_si128((__m128i_u *) temp_arr, sum);

        for (int i = 0; i < 4; ++i) {
            result += temp_arr[i];
        }

        /* Tail Case */
        for (unsigned int i = NUM_ELEMS / 16 * 16; i < NUM_ELEMS; i++) {
            if (vals[i] >= 128) {
                result += vals[i];
            }
        }
	}
	clock_t end = clock();
	printf("Time taken: %Lf s\n", (long double)(end - start) / CLOCKS_PER_SEC);
	return result;
}
