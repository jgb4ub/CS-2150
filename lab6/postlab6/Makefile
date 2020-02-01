#Josh Buckley jgb4ub  section 102
CXX=clang++ -O2
DEBUG=-Wall -g
CXXFLAGS= -lrt


out: hashTable.cpp  timer.cpp  wordPuzzle.cpp
	$(CXX) $(DEBUG) hashTable.cpp timer.cpp wordPuzzle.cpp

.SUFFIXES: .o .cpp


clean:
	-rm -f *.o a.out


wordPuzzle.o: wordPuzzle.cpp timer.h hashTable.h
timer.o: timer.cpp timer.h
hashTable.o: hashTable.cpp hashTable.h
