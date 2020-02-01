//josh Buckley jgb4ub Section 102
#ifndef HASHTABLE_H
#define HASHTABLE_H

#include <iostream>
#include <vector>
#include <list>
//#include "primenumber.h"

using namespace std;

class hashTable {

 private:
  vector<list<string> > hashVect;
  int hash(string c);
  int tableSize;
  

  


 public:
  
  hashTable();
  hashTable(int x);
  ~hashTable();
  bool hashCheck(char* c);
  void hashInsert(char * filename);
  
  

  



};


  bool checkprime(unsigned int p);
  int getNextPrime(unsigned int n);

#endif
