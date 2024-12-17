/*
 *  \author Joao Goncalves - 98287
 */

#include "somm23.h"

namespace group
{

// ================================================================================== //

    SwappedProcess* swpPeek(uint32_t idx)
    {
        soProbe(405, "%s(%u)\n", __func__, idx);

        SwpNode* current = swpHead;
        uint32_t count = 0;

        while (current != NULL && count < idx)
        {
            current = current->next;
            count++;
        }

        if (count == idx && current != NULL)
        {
            return &(current->process);
        }

        return NULL;
    }

// ================================================================================== //

} // end of namespace group

