#include "AVLTree.h"
#include <string>
#include "AVLNode.h"
#include <iostream>
using namespace std;

AVLTree::AVLTree() { root = NULL; }

AVLTree::~AVLTree() {
  delete root;
  root = NULL;
}

// insert finds a position for x in the tree and places it there, rebalancing
// as necessary.
void AVLTree::insert(const string& x) {
  // YOUR IMPLEMENTATION GOES HERE
  if (root== NULL){
    AVLNode * tmp = new AVLNode();
    tmp->value = x;
    root = tmp;
  }
  else{
  insert(root, x);
  }
}

// remove finds x's position in the tree and removes it, rebalancing as
// necessary.
void AVLTree::remove(const string& x) { root = remove(root, x); }

// pathTo finds x in the tree and returns a string representing the path it
// took to get there.
string AVLTree::pathTo(const string& x) const {
  // YOUR IMPLEMENTATION GOES HERE
  if (root == NULL){
    return "";
  }
  else{
    return pathTo(root,x);
  }
}

// find determines whether or not x exists in the tree.
bool AVLTree::find(const string& x) const {
  // YOUR IMPLEMENTATION GOES HERE
  if (root == NULL){
    return false;
  }
  else{
    return find(root,x);
  }
}

// numNodes returns the total number of nodes in the tree.
int AVLTree::numNodes() const {
  // YOUR IMPLEMENTATION GOES HERE
  if (root == NULL){
    return 0;
  }
  else{
    return numNodes(root);
  }
}

// balance makes sure that the subtree with root n maintains the AVL tree
// property, namely that the balance factor of n is either -1, 0, or 1.
void AVLTree::balance(AVLNode*& n) {
  // YOUR IMPLEMENTATION GOES HERE
  if (balfactor(n) ==2){
    if (balfactor(n->right)<0){
      rotateRight(n->right);
    }
    n=rotateLeft(n);
  }

  if (balfactor(n) ==-2){
    if (balfactor(n->left)>0){
      rotateLeft(n->left);
    }
    n=rotateRight(n);
  }
  

  
  /* if (n->left == NULL && n->right==NULL){
    n->height = 0;
  }
  else if (n->left == NULL){
    n->height = n->right->height+1;
  }
  else if (n->right == NULL){
  n->height = n->left->height-1;
  }*/
  //if node
}

// rotateLeft performs a single rotation on node n with its right child.
AVLNode* AVLTree::rotateLeft(AVLNode*& n) {
  // YOUR IMPLEMENTATION GOES HERE
  AVLNode* tmp1= n->right;
  if (n->right->left!=NULL){
  AVLNode* tmp2= n->right->left;
  n->right->left = tmp1;
  n->right= tmp2;
  return tmp1;
  }
  // if (n->left!= NULL){
  //  AVLNode* tmp3 = n->left;
  // }
  else{
    n->right->left = tmp1;
  
    return tmp1;}
}

// rotateRight performs a single rotation on node n with its left child.
AVLNode* AVLTree::rotateRight(AVLNode*& n) {
  // YOUR IMPLEMENTATION GOES HERE
  // AVLNode* tmp1= n;
  //AVLNode* tmp2= n->left;
  AVLNode* tmp1= n->left;
  if (n->left->right!=NULL){
  AVLNode* tmp2= n->left->right;
   n->right->left = tmp1;
  n->left= tmp2;
  return tmp1;
  }
  // if (n->left!= NULL){
  //  AVLNode* tmp3 = n->left;
  // }
  else{n->right->left = tmp1;
 
    return tmp1;}
}

// private helper for remove to allow recursion over different nodes. returns
// an AVLNode* that is assigned to the original node.
AVLNode* AVLTree::remove(AVLNode*& n, const string& x) {
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
      AVLNode* temp = n->right;
      n->right = NULL;
      delete n;
      n = NULL;
      return temp;
    }
    if (n->right == NULL) {
      AVLNode* temp = n->left;
      n->left = NULL;
      delete n;
      n = NULL;
      return temp;
    }
    // two children -- tree may become unbalanced after deleting n
    string sr = min(n->right);
    n->value = sr;
    n->right = remove(n->right, sr);
  } else if (x < n->value) {
    n->left = remove(n->left, x);
  } else {
    n->right = remove(n->right, x);
  }
  n->height = 1 + max(height(n->left), height(n->right));
  balance(n);
  return n;
}

// min finds the string with the smallest value in a subtree.
string AVLTree::min(AVLNode* node) const {
  // go to bottom-left node
  if (node->left == NULL) {
    return node->value;
  }
  return min(node->left);
}

// height returns the value of the height field in a node. If the node is
// null, it returns -1.
int AVLTree::height(AVLNode* node) const {
  if (node == NULL) {
    return -1;
  }
  return node->height;
}

// max returns the greater of two integers.
int max(int a, int b) {
  if (a > b) {
    return a;
  }
  return b;
}

// Helper function to print branches of the binary tree
void showTrunks(Trunk* p) {
  if (p == nullptr) return;
  showTrunks(p->prev);
  cout << p->str;
}

// Recursive function to print binary tree
// It uses inorder traversal
void AVLTree::printTree(AVLNode* root, Trunk* prev, bool isLeft) {
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

void AVLTree::printTree() { printTree(root, NULL, false); }









//helper functions
void AVLTree::insert(AVLNode* &node,const string& x) {
  if (node->value==x)
    {return;}
 
  else if (x<node->value){
    if (node->left == NULL){
      AVLNode* tmp = new AVLNode();
      tmp->value = x;
      node->left = tmp;
      tmp->height = 1;
       node->height+=1;
      //balance(node);
    }
    else{
      insert(node->left,x);
    }
  }
  else{
    if (node->right == NULL){
      AVLNode *tmp = new AVLNode();
      tmp->value = x;
      node->right = tmp;
      tmp->height = 1;
       node->height+=1;
      // balance(node);
    }
  }
  balance(node);
}


bool AVLTree::find(AVLNode * node,const string& x) const {
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

string AVLTree::pathTo(AVLNode*node, const string&x) const{
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


int AVLTree::numNodes(AVLNode * node) const{
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


int AVLTree::balfactor(AVLNode * node) const{
  if (node->left==NULL && node->right == NULL){
    return 0;
  }
  
  else if(node->left == NULL){
    return node->right->height;
  }
  else if(node->right == NULL){
    return -(node->left->height);
  }
  else{
    return ((node->right->height)-(node->left->height));
  }
}
