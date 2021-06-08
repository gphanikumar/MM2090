// ---------------------------------------------
// MM2090 : Introduction to Scientific Computing
// Author: Gandham Phanikumar
// Example code to try out "make"
// main.cpp contains the main() function
// ---------------------------------------------

#include "user.hpp"

// ---------------------------------------------

int main() {

// create a non-static member of class user to
// point to member functions
  int (user::*pt2member)(int) = NULL;

  user qt;
  qt.mkUniformTree(3);
  qt.mkArray(qt.nx);

//  char *QueueDataFile = "queue.dat";
//  qt.qwrite(QueueDataFile);

  pt2member = &user::InitData;

  if(pt2member == &user::InitData) 
    std::cout << "Pointer to InitData is set" << endl;

  std::cout << "traversing ..." << endl;
  qt.TraverseNodes(pt2member, IEXECUTE);
  std::cout << "... done." << endl;

  pt2member = &user::PrintNbrs;

  if(pt2member == &user::PrintNbrs) 
    std::cout << "Pointer to PrintNbrs is set" << endl;

  std::cout << "traversing ..." << endl;
  qt.TraverseNodes(pt2member, IEXECUTE);
  std::cout << "... done." << endl;

/*
  pt2member = &user::UnRefineCriterion;
  if(pt2member == &user::UnRefineCriterion) 
    std::cout << "Pointer to UnRefineCriterion is set" << endl;
  std::cout << "traversing ..." << endl;
  qt.TraverseNodes(pt2member, IUNREFINE);
  std::cout << "... done." << endl;
*/
//qt.testunref(4);
//
for (int i = 0; i <4; i++) {

  pt2member = &user::Bound;
  if(pt2member == &user::Bound) 
    std::cout << "Pointer to Bound is set" << endl;
  std::cout << "traversing ..." << endl;
  qt.TraverseNodes(pt2member, IEXECUTE);
  std::cout << "... done." << endl;

  pt2member = &user::PutBack;
  if(pt2member == &user::PutBack) 
    std::cout << "Pointer to PutBack is set" << endl;
  std::cout << "traversing ..." << endl;
  qt.TraverseNodes(pt2member, IEXECUTE);
  std::cout << "... done." << endl;

  pt2member = &user::Calculate;
  if(pt2member == &user::Calculate) 
    std::cout << "Pointer to Calculate is set" << endl;
  std::cout << "traversing ..." << endl;
  qt.TraverseNodes(pt2member, IEXECUTE);
  std::cout << "... done." << endl;

}

  const char *GridFileName = "grid.dat";
  qt.printnodes(GridFileName);

  qt.Tree2Array(qt.var);
  const char *DataFileName = "t1.dat";
  qt.PrintGridData(DataFileName);

 user qr;

  qr.mkUniformTree(3);
  qr.mkArray(qr.nx);

//  char *QueueDataFile = "queue.dat";
//  //  qt.qwrite(QueueDataFile);
//
    pt2member = &user::InitData;
    if(pt2member == &user::InitData)
    std::cout << "Pointer to InitData is set" << endl;
    std::cout << "traversing ..." << endl;
    qr.TraverseNodes(pt2member, IEXECUTE);
    std::cout << "... done." << endl;

    pt2member = &user::PrintNbrs;
    if(pt2member == &user::PrintNbrs)
    std::cout << "Pointer to PrintNbrs is set" << endl;
    std::cout << "traversing ..." << endl;
    qr.TraverseNodes(pt2member, IEXECUTE);
    std::cout << "... done." << endl;
                              /*
//                                pt2member = &user::UnRefineCriterion;
//                                  if(pt2member == &user::UnRefineCriterion) 
//                                      std::cout << "Pointer to UnRefineCriterion is set" << endl;
//                                        std::cout << "traversing ..." << endl;
//                                          qt.TraverseNodes(pt2member, IUNREFINE);
//                                            std::cout << "... done." << endl;
//                                                                                                                   
// ------------------------------------------------------------------------------*/
//qr.testunref(4);
//qr.SetNbrs();
//qr.TraverseNodes(pt2member, IEXECUTE);
qr.testunref(3);
qr.SetNbrs();
qr.TraverseNodes(pt2member,IEXECUTE);
for (int i = 0; i <3; i++) {
   cout<<endl<<endl;
  pt2member = &user::Bound;
  if(pt2member == &user::Bound)
    std::cout << "Pointer to Bound is set" << endl;
  std::cout << "traversing ..." << endl;
  qr.TraverseNodes(pt2member, IEXECUTE);
  std::cout << "... done." << endl;

  pt2member = &user::PutBack;
  if(pt2member == &user::PutBack)
    std::cout << "Pointer to PutBack is set" << endl;
  std::cout << "traversing ..." << endl;
  qr.TraverseNodes(pt2member, IEXECUTE);
  std::cout << "... done." << endl;

  pt2member = &user::Calculate;
  if(pt2member == &user::Calculate)
    std::cout << "Pointer to Calculate is set" << endl;
  std::cout << "traversing ..." << endl;
  qr.TraverseNodes(pt2member, IEXECUTE);
  std::cout << "... done." << endl;

}
  const char *GridFileName1 = "grid1.dat";
  qr.printnodes(GridFileName1);

  qr.Tree2Array(qr.var);
  const char *DataFileName1 = "t.dat";
  qr.PrintGridData(DataFileName1);

  return(0);
}
// ------------- end of main.cpp ---------------------
