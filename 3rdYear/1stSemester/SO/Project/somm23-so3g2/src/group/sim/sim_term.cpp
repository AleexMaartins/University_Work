/*
 *  \author Diogo Branco Alves da Silva - 1043431
 */

#include "somm23.h"

namespace group 
{

// ================================================================================== //

    void simTerm() 
    {
        soProbe(102, "%s()\n", __func__);

        memTerm();
        swpTerm();
        pctTerm();
        feqTerm();
    }

// ================================================================================== //

} // end of namespace group

