#Josh Buckley   jgb4ub   Lab Section: 102
# 10/13/2019     Makefile

CXX=clang++ 
#DEBUG=-Wall -g
CXXFLAGS= -Wall -std=c++11
OFILES= AVLNode.cpp AVLTree.cpp AVLPathTest.cpp



.SUFFIXES: .o .cpp

BinarySearchTree: $(OFILES)
	$(CXX) $(CXXFLAGS) $(OFILES)


AVLNode.o: AVLNode.cpp AVLNode.h
AVLPathTest.o: AVLPathTest.cpp AVLTree.h AVLNode.h
AVLTree.o: AVLTree.cpp AVLTree.h AVLNode.h


clean:
	-rm -f *.o a.out *~


