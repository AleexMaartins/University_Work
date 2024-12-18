/*
 *  \author Alexandre Costa Martins - 103552
 */

#include "somm23.h"

namespace group 
{

// ================================================================================== //

    void pctTerm() 
    {
        soProbe(302, "%s()\n", __func__);

        /* TODO POINT: Replace next instruction with your code */
        PctNode* current = pctHead; // pointer to the current node being deleted
        
        while (current != NULL) {
            PctNode* next = current->next;
            free(current);
            current = next;
        }

        // Reset the head of the linked list
        pctHead = NULL;
}

// ================================================================================== //

} // end of namespace group

