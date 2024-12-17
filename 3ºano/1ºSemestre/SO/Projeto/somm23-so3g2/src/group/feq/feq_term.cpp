/*
 *  \author José Cerqueira - 76758
 */

#include "somm23.h"

namespace group 
{

// ================================================================================== //

    void feqTerm() 
    {
        soProbe(202, "%s()\n", __func__);

        while (feqHead) {
            FeqEventNode *tmp = feqHead;
            feqHead = feqHead->next;
            delete tmp;
        }
        
        feqHead = nullptr;
    }

// ================================================================================== //

} // end of namespace group

