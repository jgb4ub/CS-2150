// Josh Buckley jgb4ub     10/20/19   wordPuzzle.cpp
// Section: 102

#include <iostream>
#include <vector>
#include <fstream>
#include <stdlib.h>
#include "timer.h"
#include <cmath>
#include "hashTable.h"
#include <stack>




//Josh Buckley   jgb4ub   section 102



#include <string>

using namespace std;

// We create a 2-D array of some big size, and assume that the grid
// read in will be less than this size (a valid assumption for lab 6)
#define MAXROWS 500
#define MAXCOLS 500
char grid[MAXROWS][MAXCOLS];

// Forward declarations
bool readInGrid (string filename, int &rows, int &cols);
char* getWordInGrid (int startRow, int startCol, int dir, int len,
                     int numRows, int numCols);



/** The main() function shows how to call both the readInGrid()
 * function as well as the getWordInGrid() function.
 */
/*int main() {
    // to hold the number of rows and cols in the input file
    int rows, cols;
    // attempt to read in the file
    bool result = readInGrid ("5x8.grid.txt", rows, cols);
    // if there is an error, report it
    if ( !result ) {
        cout << "Error reading in file!" << endl;
        exit(1); // requires the <stdlib.h> #include header!
    }
    // Get a word (of length 10), starting at position (2,2) in the
    // array, in each of the 8 directions
    cout << endl;
    for ( int i = 0; i < 8; i++ )
        cout << i << ": " << getWordInGrid(2,2,i,10,rows,cols) << endl;
    // All done!
    return 0;
}

*/

/** This function will read in a grid file, as per the format in the
 * CS 2150 lab 6 document, into a global grid[][] array.  It uses C++
 * file streams, and thus requires the the <fstream> #include header.
 *
 * @return true or false, depending on whether the file was
 *         successfully opened.
 * @param filename The file name to read in -- it's assumed to be in
 *                 the file format described in the lab document.
 * @param rows The number of rows as specified in the input file;
 *             as this is a reference, it is set by the function.
 * @param cols The number of columnss as specified in the input file;
 *             as this is a reference, it is set by the function.
 */
bool readInGrid (string filename, int &rows, int &cols) {
    // a C++ string to hold the line of data that is read in
    string line;
    
    // set up the file stream to read in the file (takes in a C-style
    // char* string, not a C++ string object)
    ifstream file(filename.c_str());
    // upon an error, return false
    if ( !file.is_open() )
        return false;
    // the first line is the number of rows: read it in
    file >> rows;
 
    getline (file,line); // eats up the return at the end of the line
    // the second line is the number of cols: read it in and parse it
    file >> cols;
 
    getline (file,line); // eats up the return at the end of the line
    // the third and last line is the data: read it in
    getline (file,line);
    // close the file
    file.close();
    // convert the string read in to the 2-D grid format into the
    // grid[][] array.  In the process, we'll print the grid to the
    // screen as well.
    int pos = 0; // the current position in the input data
    for ( int r = 0; r < rows; r++ ) {
        for ( int c = 0; c < cols; c++ ) {
            grid[r][c] = line[pos++];
          
        }
       
    }
    // return success!
    return true;
}



/** This function will retrieve a word in a grid of letters in a given
 * direction.  If the end of the grid is encountered before the length
 * of the desired string is reached, then a shorter string will be
 * returned.  The data is retrieved from a global char grid[][]
 * array, which is assumed to be defined (and in scope).  NOTE: The
 * return value is a static char[][] variable (for efficiency
 * reasons), so a successive return value will overwrite a previous
 * return value.
 *
 * @return A char* containing the letters in the provided direction
 *         (NOTE: it is returned in a static char array).
 * @param startRow The starting (row,col) position to find the word.
 * @param startCol The starting (row,col) position to find the word.
 * @param dir The direction to move: 0 is north (upwards), 1 is
 *            northeast, and it rotates around clockwise until it
 *            reaches 7 for northwest.
 * @param len The desired length of the string to return (assuming
 *            the edge of the grid is not reached--if the edge of the
 *            grid is reached, it will return as many characters as
 *            possible up to the edge of the grid, so the returned
 *            string may not have the same length as this parameter
 *            indicates).
 * @param numRows The number of rows in the global char grid[][]
 *                array.
 * @param numCols The number of columns in the global char grid[][]
 *                array.
 */
char* getWordInGrid (int startRow, int startCol, int dir, int len,
                     int numRows, int numCols) {
    // the static-ness of this variable prevents it from being
    // re-declared upon each function invocataion.  It also prevents it
    // from being deallocated between invocations.  It's probably not
    // good programming practice, but it's an efficient means to return
    // a value.
    static char output[256];
    // make sure the length is not greater than the array size.
    if ( len >= 255 )
        len = 255;
    // the position in the output array, the current row, and the
    // current column
    int pos = 0, r = startRow, c = startCol;
    // iterate once for each character in the output
    for ( int i = 0; i < len; i++ ) {
        // if the current row or column is out of bounds, then break
        if ( (c >= numCols) || (r >= numRows) || (r < 0) || (c < 0) )
            break;
        // set the next character in the output array to the next letter
        // in the grid
        output[pos++] = grid[r][c];
        // move in the direction specified by the parameter
        switch (dir) { // assumes grid[0][0] is in the upper-left
            case 0:
                r--;
                break; // north
            case 1:
                r--;
                c++;
                break; // north-east
            case 2:
                c++;
                break; // east
            case 3:
                r++;
                c++;
                break; // south-east
            case 4:
                r++;
                break; // south
            case 5:
                r++;
                c--;
                break; // south-west
            case 6:
                c--;
                break; // west
            case 7:
                r--;
                c--;
                break; // north-west
        }
    }
    // set the next character to zero (end-of-string)
    output[pos] = 0;
    // return the string (a C-style char* string, not a C++ string
    // object)
    return output;
}












using namespace std;

int main(int argc, char* argv[]) {
  string dir_array[8]= {"N","NE","E","SE","S","SW","W","NW"};
  int wordsFound = 0;
  int dlength = 0;
  string line;

  //int flistIndex=0;
  stack<string> flist;
  
  
  //cout<< "check 1"<<endl;
  ifstream file1(argv[1]);
  file1 >> line;
 
  dlength++;
  while(getline(file1,line)){
    dlength++;
  }
  
  //int fList[dlength];



  
  /*ifstream file1_2(argv[1]);
  for (int i=0;i<dlength;i++){
    getline(file1_2,line);
    dict->hashInsert(line);
    
    }*/
  hashTable * dict = new hashTable((dlength*3));
  //cout<<"stuff "<<dlength<<endl;
  //cout<<"check 2"<<endl;
  
  //cout<<"stuff3"<<endl;
    // to hold the number of rows and cols in the input file
  // cout<<"check 3"<<endl;
  dict->hashInsert(argv[1]);
  //cout<<"stuff2"<<endl;

  /*  string line2;
  ifstream file2(argv[1]);
  file2 >> line;
  while (getline(file2,line)){
    file2>>line
    dict->hashInsert(line)
    }*/
    int rows, cols;
    // attempt to read in the file
    bool result = readInGrid (string(argv[2]), rows, cols);
    // if there is an error, report it
    if ( !result ) {
        cout << "Error reading in file!" << endl;
        exit(1); // requires the <stdlib.h> #include header!
    }
    // cout<<"check 4"<<endl;
    // Get a word (of length 10), starting at position (2,2) in the
    // array, in each of the 8 directions
    //cout << endl;
    timer * timber = new timer();
    timber->start();
    //cout<<"check 5"<<endl;
    for (int x = 0; x<rows;x++){
      // cout<<"check1"<<endl;
      for (int y=0; y<cols;y++){
	  for ( int i = 0; i < 8; i++ ){
	    int maxLength= 23;
	    int maxRight = cols-y;
	    int maxLeft = y+1;
	    int maxUp = x+1;
	    int maxDown = rows-x;
	    if (i==0){
	      maxLength = min(maxLength,maxUp);
	    } else if (i==1){
	      int maxLengthUp= min(maxLength,maxUp);
	      int maxLengthRight = min(maxLength,maxRight);
	      maxLength = min(maxLengthUp,maxLengthRight);
	    } else if (i==2){
	      maxLength = min(maxLength,maxRight);
	    } else if (i==3){
	      int maxLengthDown= min(maxLength,maxDown);
	      int maxLengthRight = min(maxLength,maxRight);
	      maxLength = min(maxLengthDown,maxLengthRight);
	    } else if (i==4){
	      maxLength = min(maxLength,maxDown);
	    } else if (i==5){
	      int maxLengthDown= min(maxLength,maxDown);
	      int maxLengthLeft = min(maxLength,maxLeft);
	      maxLength = min(maxLengthDown,maxLengthLeft);
	    } else if (i==6){
	      maxLength = min(maxLength,maxLeft);
	    } else if (i==7){
	      int maxLengthUp= min(maxLength,maxUp);
	      int maxLengthLeft = min(maxLength,maxLeft);
	      maxLength = min(maxLengthUp,maxLengthLeft);
	    }
	    
	    for (int l=3; l<=maxLength/*23*/ ;l++){
	      // if ((l+x)>rows || (l+y)>cols)
	   
	      
	      
	      //&& l<(rows-x) && l<(cols-y)
	      //cout<<"check4"<<endl;
	      //   cout<<(string)getWordInGrid(x,y,i,l,rows,cols)<<endl;


	      if (dict->hashCheck(getWordInGrid(x,y,i,l,rows,cols))){
		wordsFound++;
		
		string temps= (dir_array[i]+"("+to_string(x)+","+to_string(y)+"): "+(string)getWordInGrid(x,y,i,l,rows,cols));
		flist.push(temps);
	       
		//cout<< "check5"<<endl;
		//fList[flistIndex] = dir_array[i]+" ("+to_string(x)+","+to_string(y)+"): "+(string)getWordInGrid(x,y,i,l,rows,cols);
		//flistIndex++;
		//cout << dir_array[i]<<"("<<x<<","<<y << "): " <<" "<<string(getWordInGrid(x,y,i,l,rows,cols))<<endl;
	      
	      
    // All done!
	      }
	}
	}  
    }
      //cout<<"check 6"<<endl;
    }
    
    timber->stop();
    //for (int q=0;dlength;q++){
    // cout<< fList[q]<<endl;
    // }
    while (!flist.empty()){cout<<flist.top()<<endl;
      flist.pop();}
    cout<< wordsFound<< " words found"<<endl;
    cout<< "found all words in "<<  timber->getTime()<<"seconds"<<endl;
    cout<<timber->getTime()*1000<<endl;
    
    return 0;
}



