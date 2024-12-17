/*
 *  \author Alexandre Costa Martins - 103552
 */

#include "somm23.h"

namespace group
{

    // ================================================================================== //

    /*
     * \brief Init the module's internal data structure
     */
    void simInit(uint32_t mSize, uint32_t osSize, uint32_t cSize, AllocationPolicy policy)
    {
        // This line determines the string representation of the allocation policy.
        const char *pas = policy == FirstFit ? "FirstFit" : policy == BuddySystem ? "BuddySystem" : "Unkown";
        // This line logs the function call with the parameters it was called with.
        soProbe(101, "%s(%#x, %#x, %#x, %s)\n", __func__, mSize, osSize, cSize, pas);

    //Init the module's internal data structure
    stepCount = 0;
    simTime = 0;
    //forthcomingTable is initialized in simload;

    // The other modules are initialized here.
        feqInit();
        pctInit();
        swpInit();
        memInit(mSize, osSize, cSize, policy);
    }

    // ================================================================================== //

} // end of namespace group