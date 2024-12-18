/*
 *  \author José Cerqueira - 76758
 */

#include "somm23.h"

namespace group 
{

// ================================================================================== //

    void memTerm() 
    {
        soProbe(502, "%s()\n", __func__);

        switch (memParameters.policy) {
            case FirstFit :{
                // Delete the free memory linked list
                MemListNode* node = memFreeHead;
                while (node) {
                    MemListNode* next = node->next;
                    delete node;
                    node = next;
                }
                memFreeHead = nullptr;

                // Delete the occupied memory linked list
                node = memOccupiedHead;
                while (node) {
                    MemListNode* next = node->next;
                    delete node;
                    node = next;
                }
                memOccupiedHead = nullptr;

                break;
            }
            case BuddySystem :{
                // Delete the buddy system tree
                delete memTreeRoot;
                break;
            }
            default:
                throw Exception(EINVAL, __func__);
        }

        // Reset the memory parameters
        memParameters.chunkSize = 0;
        memParameters.kernelSize = 0;
        memParameters.totalSize = 0;
        memParameters.policy = FirstFit;

    }

// ================================================================================== //

} // end of namespace group

