/*
 *  \author José Cerqueira - 76758
 */

#include "somm23.h"

#include <stdint.h>

namespace group {

    // Free a block
    void setFreeBlock(MemTreeNode* node) {
        node->state = FREE;
        node->block.pid = 0;
        node->left = NULL;
        node->right = NULL;
    }

    // Merge two nodes
    void mergeNodes(MemTreeNode* node) {
        // Check if the node is valid
        if (node->state != SPLITTED)
            throw Exception(EINVAL, __func__);

        // Delete the children
        if (node->left != NULL)
            delete node->left;
        if (node->right != NULL) 
            delete node->right;

        // Set the node as free
        setFreeBlock(node);
    }

    // Recursive function to find and free a block
    bool freeBlockRecursively(MemTreeNode* node, Address address) {
        // Reached the end of the tree
        if (node == NULL)
            return false;

        // Check if the node is valid
        if (node->state != SPLITTED && node->state != FREE && node->state != OCCUPIED)
            throw Exception(EINVAL, __func__);

        // Found the block to be freed
        if (node->block.address == address && node->state == OCCUPIED) {
            setFreeBlock(node);
            // Requested block was freed
            return true;
        }

        // Check if the block is in the left or right subtree
        bool isLeftSubtree = (address < node->block.address + (node->block.size >> 1));
        // Search from left to right
        if ((isLeftSubtree && freeBlockRecursively(node->left, address)) ||   
            (!isLeftSubtree && freeBlockRecursively(node->right, address))) {
        
            // Check if the node can be merged
            if (node->left && node->right && node->left->state == FREE && node->right->state == FREE) 
                mergeNodes(node);

            // A block was freed
            return true;
        }

        // No block was freed
        return false;
    }

    // Free a block in the memory buddy system
    void memBuddySystemFree(Address address) {
        soProbe(509, "%s(%u)\n", __func__, address);

        // Check if the buddy system tree is initialized
        if (!memTreeRoot)
            throw Exception(EINVAL, __func__);

        // Check if the address is valid
        if (address < memTreeRoot->block.address || address > memTreeRoot->block.address + memTreeRoot->block.size)
            throw Exception(EFAULT, __func__);

        // Free the block
        if (!freeBlockRecursively(memTreeRoot, address))
            throw Exception(EINVAL, __func__);
    }

} // end of namespace group