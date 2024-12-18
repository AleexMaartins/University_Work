/*
 *  \author José Cerqueira - 76758
 */

#include "somm23.h"

#include <stdint.h>

namespace group 
{

// ================================================================================== //
    
    // Allocate a process into a free node
    void occupyNode(MemTreeNode* node, uint32_t pid) {
        // Set the PID and the state of the node
        node->block.pid = pid;
        node->state = OCCUPIED;
    }

    // Create two new nodes from a node
    void splitNode(MemTreeNode* node) {
        // Create the two new nodes
        MemTreeNode* leftNode = new MemTreeNode;
        MemTreeNode* rightNode = new MemTreeNode;

        // Set the state of the new nodes
        leftNode->state = FREE;
        rightNode->state = FREE;

        // Set the size of the new nodes
        leftNode->block.size = node->block.size >> 1;
        rightNode->block.size = leftNode->block.size;

        // Set the address of the new nodes
        leftNode->block.address = node->block.address;
        rightNode->block.address = node->block.address + leftNode->block.size;

        // Set the PID of the new nodes (free blocks have PID 0)
        leftNode->block.pid = 0;
        rightNode->block.pid = 0;

        // Set the pointers of the new nodes
        leftNode->left = NULL;
        leftNode->right = NULL;
        rightNode->left = NULL;
        rightNode->right = NULL;

        // Set the pointers of the node
        node->left = leftNode;
        node->right = rightNode;

        // Set the state of the node
        node->state = SPLITTED;
    }

    // Find the best node to allocate a process
    MemTreeNode* findBestFitFreeNode(MemTreeNode* node, uint32_t size) {
        require(node != NULL, "The node must be valid");
        require(size > 0, "The size of a memory segment must be greater than zero");

        switch (node->state) {
        case FREE:
            // Split the node if it is too big
            if (node->block.size != size) {
                splitNode(node);
                return findBestFitFreeNode(node->left, size);
            }
            // Found a free node with the right size
            else
                return node;
            break;

        case SPLITTED:
            // Split the node if it is too big
            if (node->block.size != size) {
                MemTreeNode* leftNode = findBestFitFreeNode(node->left, size);
                if (leftNode)
                    return leftNode;
                return findBestFitFreeNode(node->right, size);
            }
            // Can't allocate a process into a splitted node
            else
                return NULL;
            break;

        case OCCUPIED:
            // Can't allocate a process into an occupied node
            return NULL;
            break;
            
        default:
            throw Exception(EINVAL, __func__);
        }

        // Code should never reach here, but adding a return statement to avoid compiler warnings
        return NULL;
    }


    Address memBuddySystemAlloc(uint32_t pid, uint32_t size) {
        soProbe(506, "%s(%u, %#x)\n", __func__, pid, size);

        require(pid > 0, "A valid process ID must be greater than zero");
        require(size > 0, "The size of a memory segment must be greater than zero");
        require(memTreeRoot != NULL, "The buddy system tree must be initialized");

        // Round the size up to the nearest power of 2
        uint32_t nodeSize = size;
        if (nodeSize & (nodeSize - 1)) {
            nodeSize--;
            nodeSize |= nodeSize >> 1;
            nodeSize |= nodeSize >> 2;
            nodeSize |= nodeSize >> 4;
            nodeSize |= nodeSize >> 8;
            nodeSize |= nodeSize >> 16;
            nodeSize++;
        }

        // Starting from the root node
        MemTreeNode* node = memTreeRoot;

        // Find the best fit free node
        node = findBestFitFreeNode(node, nodeSize);

        // Check if a free node was found
        if (!node)
            return NULL_ADDRESS;

        // Allocate the process into the node
        occupyNode(node, pid);

        // Return the address of the node
        return node->block.address;
    }

// ================================================================================== //

} // end of namespace group