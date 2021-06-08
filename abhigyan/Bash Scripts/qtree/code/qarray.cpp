// ---------------------------------------------
// MM2090 : Introduction to Scientific Computing
// Author: Gandham Phanikumar
// Example code to try out "make"
// qtree.cpp contains the qarray class definition 
// ---------------------------------------------
#include "qarray.hpp"
#include<iostream>
#include<math.h>
#include<fstream>
GridVars DEFVAR1 = {0.0, 0.0};

// -----------------------------------------------------------------------

qarray::qarray()
{
  // empty constructor to make inheritance easy
}

// -----------------------------------------------------------------------

void qarray::mkArray(unsigned int n)
{
  qarrayNX = n;
  int i;
  int j;

  std::cout << "Allocating 2D array of doubles of size " << qarrayNX << endl;

  var = new GridVars *[qarrayNX];
  for (i = 0; i < qarrayNX; ++i) {
    var[i] = new GridVars[qarrayNX];
  }

  for (j = 0; j < qarrayNX; j++) {
    for (i = 0; i < qarrayNX; i++) { 
      var[i][j] = DEFVAR1;
    }
  }
  std::cout << "2D array of size " << qarrayNX << " ready." << endl;
}

// -----------------------------------------------------------------------

void qarray::PrintGridData(const char *FileName) 
{
  int i, j;
  ofstream out(FileName);
//  out << "i j t[i][j]" << endl;
  for (i = 0; i < qarrayNX; i++) {
    for (j = 0; j < qarrayNX; j++) {
      out << (float)var[i][j].t << " ";
    }
    out << endl;
  }
  out.close();
  std::cout << "Data written to " << FileName << endl;
}

// --------- end of qtree.cpp ------------------------
