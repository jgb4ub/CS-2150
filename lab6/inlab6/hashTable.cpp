//josh Buckley jgb4ub section 102

#include <iostream>
#include "hashTable.h"
#include <cmath>
#include <fstream>
#include <iterator>

using namespace std;



hashTable::hashTable(){}

hashTable::hashTable(int x){

  
 
  if (!checkprime(x)){
    x= getNextPrime(x);
  }
   tableSize = x;
 hashVect.resize(x);   
}


hashTable::~hashTable(){
  

  
}


bool hashTable::hashCheck(char* c){
 
  int index = hash((string)c);
  list<string> currList = hashVect.at(index);
  std::list<string>::iterator it;
  string checker = (string)c;
  if (currList.empty()){
    return false;}
  if (checker.length()<3){
    return false;
  }

  // if (*it== checker){
  //return true;
  // }
  //cout<<"not empty list"<<endl;
  for (it = currList.begin(); it!=currList.end();++it)
    {
         if (*it== checker){
	   //cout<< *it<<" in hashVect"<<endl;
	return true;
      }
    }
    /*for (  it = currList.begin();it!=currList.end();++it)
    {
      string id = it->id;
	{return true;
	}
	}*/
  return false;
}


void  hashTable::hashInsert(char *  filename){





  string line;
  ifstream file(filename);
  if (!file.is_open()){
    cout<< "error opening dictionary file"<<endl;
  }
  getline(file,line);
    // file >> line;
  int index= hash(line);
  //cout<<"check a"<<endl;
  //list<string> &currList = hashVect.at(index);
  hashVect.at(index).push_back(line);
  //currList.push_back(line);
  //cout<<"check b"<<endl;
  while (getline(file,line)){
    //file >> line;
    index = hash(line);
    //cout<<"check c"<<endl;
    //cout<< index<<endl;
    hashVect[index].push_back(line);
  }
  // cout<<"finished insert"<<endl;
}


int hashTable::hash(string c){
  int intVal= 0;
  //cout<< c<< " is hash input" <<endl;
  for (int i=0; i<c.length();i++){
    if (c[i]!= '&' && c[i]!= '\'' && c[i]!= '-')
      // intVal+= (((int)c[i])*pow(37,i));
      intVal+= (int)c[i]*123;
  }
 int tempHash = (intVal % tableSize);
 //cout<<intVal<<" is intVal"<<endl;
 //cout<<tempHash<< "  is tempHash"<<endl;
 if (tempHash<0)
   {
     tempHash = -tempHash;
   }
 return tempHash;
}





bool checkprime(unsigned int p) {
    if ( p <= 1 ) // 0 and 1 are not primes; the are both special cases
        return false;
    if ( p == 2 ) // 2 is prime
        return true;
    if ( p % 2 == 0 ) // even numbers other than 2 are not prime
        return false;
    for ( int i = 3; i*i <= p; i += 2 ) // only go up to the sqrt of p
        if ( p % i == 0 )
            return false;
    return true;
}

int getNextPrime (unsigned int n) {
    while ( !checkprime(++n) );
    return n; // all your primes are belong to us
}
