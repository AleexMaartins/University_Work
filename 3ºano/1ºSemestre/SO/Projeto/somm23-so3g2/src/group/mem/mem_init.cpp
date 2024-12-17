/*
 *  \author Alexandre Costa Martins - 103552
 *  \author José Cerqueira - 76758
 */

#include "somm23.h"

#include <stdint.h>

namespace group 
{

// =======================================================================  =========== //

    void memInit(uint32_t mSize, uint32_t osSize, uint32_t cSize, AllocationPolicy policy) 
    {
        const char *pas = policy == FirstFit ? "FirstFit" : policy == BuddySystem ? "BuddySystem" : "Unkown";
        soProbe(501, "%s(%#x, %#x, %#x, %s)\n", __func__, mSize, osSize, cSize, pas);

        require(mSize > osSize, "memory must be bigger than the one use by OS");
        require((mSize % cSize) == 0, "memory size must be a multiple of chunck size");
        require((osSize % cSize) == 0, "memory size for OS must be a multiple of chunck size");
        require(policy == FirstFit or policy == BuddySystem, "policy must be FirstFit or BuddySystem");

        /* TODO POINT: Replace next instruction with your code */

        // mSize Total amount of memory, in bytes, available
        // osSize The amount of memory used by the operating system, in bytes
        // cSize The unit of allocation, in bytes

        memTreeRoot = NULL;
        memFreeHead = NULL;
        memOccupiedHead = NULL;

        memParameters.chunkSize = cSize;
        memParameters.policy = policy;
        memParameters.kernelSize = osSize;
        memParameters.totalSize = mSize;
        
        switch (policy)
        {
        case FirstFit:
            {memFreeHead = new MemListNode();
       
            //and memFreeHead and memOccupiedHead must be initialized properly.
            memFreeHead->block.address = osSize;        // The free block starts where the OS ends (osSize)
            memFreeHead->block.size = mSize - osSize; 
            break;}

        //If policy is BuddySystem, memFreeHead and memOccupiedHead must be put at NULL and memTreeRoot must be initialized properly.
        case BuddySystem:
            {
            memTreeRoot = new MemTreeNode();
            require(memTreeRoot != NULL, "Failed to allocate memory for the buddy system tree");

            /*
            *   The buddy system tree is initialized with a single node that represents the whole memory
            *   The size of the block is 2^N * cSize
            *   The address of the block is the last address used by the OS
            */
           
            // Calculate the size of the memory available for the buddy system tree
            uint32_t memSize = mSize - osSize;
            uint32_t blockSize = 1;

            // Find the smallest power of 2 that is greater than or equal to memSize
            while(blockSize * cSize < memSize) 
                blockSize <<= 1;            
            uint32_t memSizeBS = blockSize * cSize >> 1;

            // Initialize the root node
            memTreeRoot->block.size = memSizeBS;    // The size of the block is 2^N * cSize
            memTreeRoot->state = FREE;              // The node is free
            memTreeRoot->block.address = osSize;    // The address of the block is the last address used by the OS
            memTreeRoot->block.pid = 0;             // No process has been assigned to the block
            break;}

        default:
            throw Exception(EINVAL, __func__);
            break;
        }
       
                    
    
    }

// ================================================================================== //

} // end of namespace group
