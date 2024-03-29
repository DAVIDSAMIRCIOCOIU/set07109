#pragma once

#include <string>
#include <vector>
#include "Node.h"

using namespace std;

class BinarySearchTree : public Node
{
public:
	// **Constructors and destructors**
	
	// Creates an empty binary tree
    BinarySearchTree();
    // Creates a binary search tree with an initial word to store
    BinarySearchTree(std::string word);
    // Creates a binary search tree by copying an existing tree
    BinarySearchTree(const BinarySearchTree &rhs);
    // Creates a binary search tree from a collection of existing words
	BinarySearchTree(const std::vector<std::string> &words);
    // Destroys (cleans up) the tree
    ~BinarySearchTree();
    
    // **Methods that can be called on a BinarySearchTree object**
    
    // Adds a word to the tree
    void insert(std::string word);
	// Checks if a word is in the tree
    bool exists(std::string word) const;
    // Creates a string representing the tree in alphabetical order
    std::string inorder() const;
    // Creates a string representing the tree in pre-order
    std::string preorder() const;
    // Creates a string representing the tree in post-order
    std::string postorder() const;

    // **MyMethods** 

    // Prints root
    string printRoot();
    // Removes the nodes in the tree
    void RemoveSubtree(Node* Ptr);
    // Returns the counter of the word in the tree
    int findWordCounter(string word);
    // Helper for the destructor
    void DestroyRecursive(Node* Ptr);

    


    // **Operator overloads**
    
    // Inserts a new word into the binary tree
    BinarySearchTree& operator+(std::string word);

    
    // Copy assignment operator
    BinarySearchTree& operator=(const BinarySearchTree &rhs);
    
private:
    //instance variables
	Node *root = nullptr; // Pointer to the root Node of the tree

    // Adds a node to the BST
    Node* CreateLeaf(string word);
    // Adds a leaf to BST 
    void insertPrivate(string word, Node* Ptr);
    // Used by inorder to print the tree in order traversal
    void inorderPrivate(Node* Ptr) const;
    // Used by exists to check for word existence in the tree
    bool existsPrivate(string word, Node* Ptr) const;
    // Used by preorder to print the tree in pre order
    void preorderPrivate(Node *Ptr) const;
    // Used by postorder to print the tree in post order
    void postorderPrivate(Node *Ptr) const;
    // Returns the counter of the word in the tree
    int findWordCounterPrivate(string word, Node* Ptr);
    // Helper for tree copy constructor
    Node* copyTreePrivate(const Node* source);
};

