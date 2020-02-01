//Josh Buckley jgb4ub   10/15/19  BinarySearchTree.cpp

#include "BinarySearchTree.h"
#include <string>
#include "BinaryNode.h"
using namespace std;

BinarySearchTree::BinarySearchTree() { root = NULL; }

BinarySearchTree::~BinarySearchTree() {
  delete root;
  root = NULL;
}

// insert finds a position for x in the tree and places it there.
void BinarySearchTree::insert(const string& x) {
  // YOUR IMPLEMENTATION GOES HERE
  if (root == NULL ){
    BinaryNode * tmp = new BinaryNode();
    tmp->value = x;
    tmp->height=1;
    root=tmp;
  }
  else if (find(x)){
    return;
  }
  else {
    insert(root,x);
  }
  
}

// remove finds x's position in the tree and removes it.
void BinarySearchTree::remove(const string& x) { root = remove(root, x); }

// pathTo finds x in the tree and returns a string representing the path it
// took to get there.
string BinarySearchTree::pathTo(const string& x) const {
  // YOUR IMPLEMENTATION GOES HERE
  return pathTo(root,x);
}

// find determines whether or not x exists in the tree.
bool BinarySearchTree::find(const string& x) const {
  // YOUR IMPLEMENTATION GOES HERE
  return find(root,x);
  
}

// numNodes returns the total number of nodes in the tree.
int BinarySearchTree::numNodes() const {
  // YOUR IMPLEMENTATION GOES HERE
  return numNodes(root);
}

// private helper for remove to allow recursion over different nodes. returns
// a BinaryNode* that is assigned to the original node.
BinaryNode* BinarySearchTree::remove(BinaryNode*& n, const string& x) {
  if (n == NULL) {
    return NULL;
  }
  // first look for x
  if (x == n->value) {
    // found
    // no children
    if (n->left == NULL && n->right == NULL) {
      delete n;
      n = NULL;
      return NULL;
    }
    // single child
    if (n->left == NULL) {
      BinaryNode* temp = n->right;
      n->right = NULL;
      delete n;
      n = NULL;
      return temp;
    }
    if (n->right == NULL) {
      BinaryNode* temp = n->left;
      n->left = NULL;
      delete n;
      n = NULL;
      return temp;
    }
    // two children
    string sr = min(n->right);
    n->value = sr;
    n->right = remove(n->right, sr);
  } else if (x < n->value) {
    n->left = remove(n->left, x);
  } else {
    n->right = remove(n->right, x);
  }
  return n;
}

// min finds the string with the smallest value in a subtree.
string BinarySearchTree::min(BinaryNode* node) const {
  // go to bottom-left node
  if (node->left == NULL) {
    return node->value;
  }
  return min(node->left);
}

// Helper function to print branches of the binary tree
void showTrunks(Trunk* p) {
  if (p == nullptr) return;
  showTrunks(p->prev);
  cout << p->str;
}

// Recursive function to print binary tree
// It uses inorder traversal
void BinarySearchTree::printTree(BinaryNode* root, Trunk* prev, bool isLeft) {
  if (root == NULL) return;

  string prev_str = "    ";
  Trunk* trunk = new Trunk(prev, prev_str);

  printTree(root->left, trunk, true);

  if (!prev)
    trunk->str = "---";
  else if (isLeft) {
    trunk->str = ".---";
    prev_str = "   |";
  } else {
    trunk->str = "`---";
    prev->str = prev_str;
  }

  showTrunks(trunk);
  cout << root->value << endl;

  if (prev) prev->str = prev_str;
  trunk->str = "   |";

  printTree(root->right, trunk, false);
}

void BinarySearchTree::printTree() { printTree(root, NULL, false); }


//insert helper funct
void  BinarySearchTree::insert(BinaryNode*& node, const string& x){
  if (node->value == x){
    return;
  }
  node->height+=1;
  if (x< node->value){
    if (node->left == NULL){
      BinaryNode* tmp = new BinaryNode();
      tmp->value = x;
      node->left = tmp;
      node->height=1;
  }
    else {
      insert(node->left,x);
    }
}
 if (x> node->value){
    if (node->right == NULL){
      BinaryNode* tmp = new BinaryNode();
      tmp->value = x;
      node->right = tmp;
      node->height=1;
  }
    else {
      insert(node->right,x);
    }
} 
}



//pathTo helper funct
string BinarySearchTree::pathTo(BinaryNode* node, const string& x) const {
  
  if (!find(x)){
    return "";
  }
  if (node->value == x){
    return node->value;
  }
  if (node->value < x){
    return (node->value + " " + pathTo(node->right,x));
  }

   if (node->value > x){
    return (node->value + " " + pathTo(node->left,x));
  }
   else return "";
}

//find helper method
bool BinarySearchTree::find(BinaryNode * node,const string& x) const{
  if (node == NULL){
    return false;
  }
  if (node->value == x){
    return true;
  }
  else if (node->value < x){
    if (node->right == NULL){
      return false;
    }
    else return find(node->right,x);
  }
  
  else if (node->value > x){
    if (node->left == NULL){
      return false;
    }
    return find(node->left,x);
  }
  else return false;
}

int BinarySearchTree::numNodes(BinaryNode * node) const{
  if (node == NULL){
    return 0;
  }
  if (node-> left == NULL && node->right == NULL){
    return 1;
  }
  else if (node->left == NULL){
    return 1+numNodes(node->right);
  }
  else if (node->right == NULL){
    return 1+numNodes(node->left);
  }
  else{
    return 1 + numNodes(node->left)+numNodes(node->right);
  }
}
  /*
BinaryNode* BinarySearchTree::getNodeRight(BinaryNode* node){
  return node->right;
}
  */
