// Joshua Buckley  jgb4ub 10/14/19  TreeCalc.cpp
// TreeCalc.cpp:  CS 2150 Tree Calculator method implementations

#include "TreeCalc.h"
#include <cstdlib>
#include <iostream>
#include <stack>

using namespace std;

//Constructor
TreeCalc::TreeCalc() {
   
}

//Destructor- frees memory
TreeCalc::~TreeCalc() {
  while (!mystack.empty()){
    cleanTree(mystack.top());
    mystack.pop();
  }
}

//Deletes tree/frees memory
void TreeCalc::cleanTree(TreeNode* ptr) {
  if((ptr->left == NULL) && (ptr->right == NULL)){
    delete ptr;
  }
  else if((ptr->left == NULL) && (ptr->right != NULL)){
     cleanTree(ptr->right);
     delete ptr;
  }
  else if((ptr->left != NULL) && (ptr->right == NULL)){
     cleanTree(ptr->left);
     delete ptr;
  }
  else{
    cleanTree(ptr->left);
    cleanTree(ptr->right);
    delete ptr;
  }
}

//Gets data from user
void TreeCalc::readInput() {
    string response;
    cout << "Enter elements one by one in postfix notation" << endl
         << "Any non-numeric or non-operator character,"
         << " e.g. #, will terminate input" << endl;
    cout << "Enter first element: ";
    cin >> response;
    //while input is legal
    while (isdigit(response[0]) || response[0]=='/' || response[0]=='*'
            || response[0]=='-' || response[0]=='+' ) {
        insert(response);
        cout << "Enter next element: ";
        cin >> response;
    }
}

//Puts value in tree stack
void TreeCalc::insert(const string& val) {
  TreeNode * x = new TreeNode(val);
  if (val == "*" || val == "/" || val == "+" || val == "-"){
    TreeNode * temp1 = mystack.top();
    mystack.pop();
    TreeNode * temp2 = mystack.top();
    mystack.pop();
    x->right= temp1;
    x->left = temp2;
  }
  mystack.push(x);
    // insert a value into the tree
}

//Prints data in prefix form
void TreeCalc::printPrefix(TreeNode* ptr) const {
    // print the tree in prefix format
  //cout<< "Expression tree in prefix expression:  ";
 if((ptr->left == NULL) && (ptr->right == NULL)){
   cout<< ptr->value << " ";
 }
  
  else if((ptr->left == NULL) && (ptr->right != NULL)){
    cout<< ptr->value<< " ";
    printPrefix(ptr->right);
  }
 else if((ptr->left != NULL) && (ptr->right == NULL)){
    cout<< ptr->value<< " ";
    printPrefix(ptr->left);
  }
 else{
    cout<< ptr->value<< " ";
    printPrefix(ptr->left);
    printPrefix(ptr->right);
  }

}

//Prints data in infix form
void TreeCalc::printInfix(TreeNode* ptr) const {
    // print tree in infix format with appropriate parentheses
  // cout<< "Expression tree in infix expression:  ";
 if((ptr->left == NULL) && (ptr->right == NULL)){
   cout<< ptr->value << " ";
 }
 else if (ptr->left->left == NULL && ptr->left->right == NULL && ptr->right->left == NULL && ptr->right->right == NULL){
   cout << "(";
   printInfix(ptr->left);
   cout <<ptr->value;
   printInfix (ptr->right);
   cout<<")";
 }
  else if((ptr->left == NULL) && (ptr->right != NULL)){
    cout<< ptr->value<< " ";
    printInfix(ptr->right);
  }
 else if((ptr->left != NULL) && (ptr->right == NULL)){
   printInfix(ptr->left);
   cout<< ptr->value<< " ";  
  }
 
 else{
    printInfix(ptr->left);
    cout<< ptr->value<< " ";
    printInfix(ptr->right);
  }
}

//Prints data in postfix form
void TreeCalc::printPostfix(TreeNode* ptr) const {
    // print the tree in postfix form
  if((ptr->left == NULL) && (ptr->right == NULL)){
   cout<< ptr->value << " ";
 }
  
  else if((ptr->left == NULL) && (ptr->right != NULL)){
    printPostfix(ptr->right);
    cout<< ptr->value<< " ";
    
  }
 else if((ptr->left != NULL) && (ptr->right == NULL)){
   printPostfix(ptr->left);
   cout<< ptr->value<< " ";
    
  }
 else{
    
    printPostfix(ptr->left);
    printPostfix(ptr->right);
    cout<< ptr->value<< " ";
  }
}

// Prints tree in all 3 (pre,in,post) forms

void TreeCalc::printOutput() const {
    if (mystack.size()!=0 && mystack.top()!=NULL) {
        cout << "Expression tree in postfix expression: ";
        // call your implementation of printPostfix()
	printPostfix(mystack.top());
        cout << endl;
        cout << "Expression tree in infix expression: ";
        // call your implementation of printInfix()
	printInfix(mystack.top());
        cout << endl;
        cout << "Expression tree in prefix expression: ";
        // call your implementation of printPrefix()
	printPrefix(mystack.top());
        cout << endl;
    } else
        cout<< "Size is 0." << endl;
}

//Evaluates tree, returns value
// private calculate() method
int TreeCalc::calculate(TreeNode* ptr) const {
  if (ptr->left == NULL && ptr->right == NULL){
    return atoi((ptr->value).c_str());
  }
  
  if (ptr->value == "+"){
    return (calculate(ptr->left) + calculate(ptr->right));
  }
  if (ptr->value == "*"){
    return (calculate(ptr->left) * calculate(ptr->right));
  }
  if (ptr->value == "/"){
    return (calculate(ptr->left) / calculate(ptr->right));
  }
  if (ptr->value == "-"){
    return (calculate(ptr->left) - calculate(ptr->right));
  }
  return 0;
    // Traverse the tree and calculates the result
}

//Calls calculate, sets the stack back to a blank stack
// public calculate() method. Hides private data from user
int TreeCalc::calculate() {
    int i = 0;
    while (!mystack.empty()){
      int temp = calculate(mystack.top());
      cleanTree(mystack.top());
      mystack.pop();
      i += temp;
    }
    // call private calculate method here
    return i;
}
