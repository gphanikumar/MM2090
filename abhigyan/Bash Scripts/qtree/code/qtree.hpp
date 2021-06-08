// ---------------------------------------------
// MM2090 : Introduction to Scientific Computing
// Author: Gandham Phanikumar
// Example code to try out "make"
// qtree.hpp contains prototype declarations for
// qtree class definition
// ---------------------------------------------
// --------------------------------------------------
//  QUADTREE PROGRAM
//
//  Written by: Phanikumar Gandham
//
//  Directions of neighbors:
//                                 _N       1
//                                _W _E     4 2
//                                  _S       3
//
//  Directions/names of children:
//                                _NW _NE    1 2
//                                _SW _SE    3 4
//
//  =>  ID%pow(5,level) = 1 for NW son etc.,
//
// ----------------------------------------------------

#include<iostream>
#include<vector>
#include<deque>
#include<map>
#include<queue>
#include<set>
#include<math.h>
#include<fstream>
#include<string>

#include "protos.hpp"

using namespace std;

#define _N 1
#define _E 2
#define _S 3
#define _W 4
#define _NW 1
#define _NE 2
#define _SW 3
#define _SE 4
#define MAX 64                     // Defines the size of the array
#define critical 100
#define MINLEVEL 3
#define MAXLEVEL 9
#define IEXECUTE 0
#define IREFINE 1
#define IUNREFINE 2
// ----------------------------------------------------------------------------

typedef struct{
  unsigned long int id;
  GridVars var;
  char endnode;
  int nbr[4][2];
  int created;
  int x1,x2,y1,y2;
} NodeData;

static const short int reflect[4][4] = {
  {_SW, _SE, _NW, _NE},
  {_NE, _NW, _SE, _SW},
  {_SW, _SE, _NW, _NE},
  {_NE, _NW, _SE, _SW}
};

static const bool adjacent[4][4] = {
  {true, true, false, false},
  {false, true, false, true},
  {false, false, true, true},
  {true, false, true, false}
};

static bool operator < (const NodeData& lhs, const NodeData& rhs) {
      return lhs.endnode < rhs.endnode;
}

class qtree {
  public:
    long int son(int p,short int d);
    long int GetNbr(int p, short int d);
    ofstream QtreeLog;

//  public:
    std::deque<NodeData> nodes;
    std::map<long int, long int> nodeindex;
    std::set<long int> isParent;
    std::queue<long int> NbrLess;
    std::queue<long int> Divide;
    std::set<long int> UnDivide;

    unsigned int maxdepth;
    unsigned long int nx;
    int qsplit(NodeData root);	
    int mkmap();
    int refine();
    int clnuptree();
    void printnodes(const char *FileName);
    int qread(char *QueueDataFile);
    int qwrite(char *QueueDataFile);
    int SetNbrs();
    int qjoin(int id);
    int aback();
    NodeData father(NodeData root);
    int level();
    void Tree2Array(GridVars **t);
    void Array2Tree(GridVars **t);
    int GetDepth(long int id);
    int analyze();
    int mkUniformTree(unsigned int depth);
    qtree();
};
// -------------- end of qtree.hpp ------------------
