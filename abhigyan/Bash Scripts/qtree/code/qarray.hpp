// ---------------------------------------------
// MM2090 : Introduction to Scientific Computing
// Author: Gandham Phanikumar
// Example code to try out "make"
// qarray.hpp contains prototype declarations for 
// qarray class definition
// ---------------------------------------------
#include "protos.hpp"

using namespace std;

class qarray {
  private:
    int qarrayNX;
  public:
    GridVars **var;
    void PrintGridData(const char *FileName);
    void mkArray(unsigned int nx);
    qarray();
};
// ----------- end of qarray.hpp ----------------
