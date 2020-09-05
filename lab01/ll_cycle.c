#include <stddef.h>
#include "ll_cycle.h"

int ll_has_cycle(node *head) {
    node* tortoise = head;
    node* hare = head;
    
    while (head != NULL) {
       if (hare == NULL || hare->next == NULL) {
           return 0;
       } else {
	   hare = hare->next->next;
	   tortoise = tortoise->next;
	
           if (hare == tortoise) {
	       return 1;
	   }
       }
         head = head->next;
    }
    return 0;
}
