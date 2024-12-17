/*
 *  \author Joao Goncalves - 98287

 */

#include "somm23.h"

#include <stdint.h>

namespace group
{

    // ================================================================================== //

    AddressSpaceMapping *memAlloc(uint32_t pid, AddressSpaceProfile *profile)
    {
        soProbe(504, "%s(%u, %p)\n", __func__, pid, profile);

        require(pid > 0, "process ID must be non-zero");
        require(profile != NULL, "profile must be a valid pointer to an AddressSpaceProfile variable");

        /* The mapping to be filled and whose pointer should be returned */
        static AddressSpaceMapping theMapping = {0, {0}};

        AllocationPolicy ACTIVE_ALLOCATION_POLICY;
        uint32_t totalMemoryRequired = 0;
        uint32_t CHUNK_SIZE = profile->size[MAX_BLOCKS];

        for (uint32_t i = 0; i < profile->segmentCount; i++)
        {
            auto &segmentSize = profile->size[i];
            // Round up the segment size to the smallest multiple of the chunk size
            uint32_t roundedSize = (segmentSize + CHUNK_SIZE - 1) / CHUNK_SIZE * CHUNK_SIZE;

            // Accumulate the total memory required based on the allocation policy
            if (ACTIVE_ALLOCATION_POLICY == AllocationPolicy::FirstFit)
            {
                totalMemoryRequired += roundedSize;
            }
            else if (ACTIVE_ALLOCATION_POLICY == AllocationPolicy::BuddySystem)
            {
                // Memory required for BuddySystem may be larger due to block division
                // Calculate the size based on power of 2
                uint32_t powerOfTwo = 1;
                while (powerOfTwo < roundedSize)
                {
                    powerOfTwo <<= 1;
                }
                totalMemoryRequired += powerOfTwo; // powerOfTwo is the smallest power of 2 that is larger than roundedSize
            }
        }
        // Total memory for processes
        const uint32_t TOTAL_MEMORY_FOR_PROCESSES = memParameters.totalSize;
        if (totalMemoryRequired > TOTAL_MEMORY_FOR_PROCESSES)
        {
            return IMPOSSIBLE_MAPPING;
        }

        AddressSpaceMapping *mapping = new AddressSpaceMapping();
        bool allocationFailed = false;

        for (uint32_t i = 0; i < profile->segmentCount; i++)
        {
            auto &segmentSize = profile->size[i];
            // Round up the segment size to the smallest multiple of the chunk size
            uint32_t roundedSize = (segmentSize + CHUNK_SIZE - 1) / CHUNK_SIZE * CHUNK_SIZE;

            // Allocate memory according to allocation policy
            Address allocatedAddress;
            try
            {
                if (ACTIVE_ALLOCATION_POLICY == AllocationPolicy::FirstFit)
                {
                    allocatedAddress = memFirstFitAlloc(pid, roundedSize);
                }
                else if (ACTIVE_ALLOCATION_POLICY == AllocationPolicy::BuddySystem)
                {
                    allocatedAddress = memBuddySystemAlloc(pid, roundedSize);
                }
            }
            catch (Exception &e)
            {
                // Free previously allocated blocks if memory allocation failed for the segment
                allocationFailed = true;
                delete mapping;
                break;
            }

            if (mapping->blockCount < MAX_BLOCKS) {
                mapping->address[mapping->blockCount] = allocatedAddress;
                mapping->blockCount++;
            } else {
                // Handle error: no more space in the mapping
                allocationFailed = true;
                delete mapping;
                break;
            }

        }

        // If memory allocation failed, return NULL_ADDRESS
        if (allocationFailed)
        {
            return NULL_ADDRESS;
        }

        return mapping;
    }

    // ================================================================================== //

} // end of namespace group
