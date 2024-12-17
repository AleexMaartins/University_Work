/*
 *  \author Joao Goncalves - 98287
 */

#include "somm23.h"

#include <stdint.h>

namespace group 
{

// ================================================================================== //

Address memFirstFitAlloc(uint32_t pid, uint32_t size)
{
    soProbe(505, "%s(%u, %#x)\n", __func__, pid, size);

    require(pid > 0, "a valid process ID must be greater than zero");
    require(size, "the size of a memory segment must be greater then zero");

    /* TODO POINT: Replace next instruction with your code */
    // throw Exception(ENOSYS, __func__);
    if (pid == 0 || size == 0)
    {
        throw Exception(EINVAL, __func__);
    }
    MemListNode* node = memFreeHead;
    while (node != nullptr)
    {
        if (node->block.size >= size)
        {
            // Split the block if it is larger than needed
            if (node->block.size > size)
            {
                MemListNode* newNode = new MemListNode();
                newNode->block.pid = 0;
                newNode->block.size = node->block.size - size;
                newNode->block.address = node->block.address + size;
                newNode->next = node->next;
                newNode->prev = node;
                if (node->next != nullptr)
                {
                    node->next->prev = newNode;
                }
                node->next = newNode;
                node->block.size = size;
            }

            // Update pid and remove node from the free list
            node->block.pid = pid;
            if (node->prev != nullptr)
            {
                node->prev->next = node->next;
            }
            else
            {
                memFreeHead = node->next;
            }
            if (node->next != nullptr)
            {
                node->next->prev = node->prev;
            }

            // Add node to allocated list
            node->next = memOccupiedHead;
            if (memOccupiedHead != nullptr)
            {
                memOccupiedHead->prev = node;
            }
            memOccupiedHead = node;
            node->prev = nullptr;

            return node->block.address;
        }

        node = node->next;
    }

    throw Exception(ENOMEM, __func__);
}

// ================================================================================== //

} // end of namespace group

