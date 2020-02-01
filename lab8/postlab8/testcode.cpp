#include <iostream>
#include <list>
using namespace std;

int * intVal =new int(3);
int intVal2 = 8;

//int * intVal2 = new int(8);
void addOne(int *value);
void subOne(int &ref);


int main(){/**
addOne(intVal);
subOne(intVal2);
	   **/
 list<string>* listie = new list<string>();
 listie->push_front("word");
  return 0;
}


void addOne(int* value){
  *value +=1;
  return;
}

void addOneRef(int &ref){
  ref+=1;
  return;
}
