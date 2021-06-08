// ---------------------------------------------
// MM2090 : Introduction to Scientific Computing
// Author: Gandham Phanikumar
// Example code to try out "make"
// user.hpp contains prototype declarations for
// user class definition
// ---------------------------------------------
#include "qtree.hpp"
#include "qarray.hpp"

class user : public qtree, public qarray {
  public:
    int PrintNbrs(int id);
    int InitData(int id);
    int Bound(int id);
    int PutBack(int id);
    int Calculate(int id);
    int UnRefineCriterion(int id);
    void TraverseNodes(int (user::*pt2member)(int id), int mytcode);
    int testunref(int j);
    user();
};
// ----------- end of user.hpp -------------------
