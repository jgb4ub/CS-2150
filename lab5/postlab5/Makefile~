#Josh Buckley   jgb4ub   Lab Section: 102
# 10/13/2019     Makefile-pizza

CXX=clang++ 
#DEBUG=-Wall -g
CXXFLAGS= -Wall -std=c++11
OFILES= BinaryNode.cpp BinarySearchTree.cpp BSTPathTest.cpp



.SUFFIXES: .o .cpp

BinarySearchTree: $(OFILES)
	$(CXX) $(CXXFLAGS) $(OFILES)


BinaryNode.o: BinaryNode.cpp BinaryNode.h
BinarySearchTree.o: BinarySearchTree.cpp BinarySearchTree.h BinaryNode.h
BSTPathTest.o: BSTPathTest.cpp BinarySearchTree.h BinaryNode.h

clean:
	-rm -f *.o a.out *~


