/*
 *  \author Joao Goncalves - 98287
 */

#include "somm23.h"

namespace group
{

// ================================================================================== //

    void swpTerm()
    {
        soProbe(402, "%s()\n", __func__);

        /* TODO POINT: Replace next instruction with your code */
        // throw Exception(ENOSYS, __func__);
        while(swpHead != NULL)
        {
            SwpNode *tmp = swpHead;
            swpHead = swpHead->next;
            delete tmp;
        }

        swpHead = NULL;
        swpTail = NULL;
    }

// ================================================================================== //

} // end of namespace group

