// ---------------------------------------------
// MM2090 : Introduction to Scientific Computing
// Author: Gandham Phanikumar
// Example code to try out "make"
// user.cpp contains user class definition
// What is done with the data stored at each node
// is defined as methods under the user class
// ---------------------------------------------
#include<iostream>
#include "user.hpp"

// ----------------------------------------------

user::user() {
  // empty constructor to help inheritance
}

// --------------------------------------------

int user::PrintNbrs(int id) 
{
  NodeData x;
  x = nodes[nodeindex[id]];
  std::cout << "nbrs for id " << id << " are ";
  for ( int i = 0; i < 4; i++) {
    std::cout << x.nbr[i][0] << " ";
    std::cout << x.nbr[i][1] << " ";
  }
//  std::cout << x.var.t << " "<<x.endnode<<" "<<x.x1<<" "<<x.y1; For checking out the movt of flux
  std::cout << endl;
  return(id); 
};

// -------------------------------------------------------------------------

int user::InitData(int id) 
{
  NodeData x;
  x = nodes[nodeindex[id]];
  if (x.x1 == 0) 
  {
    nodes[nodeindex[id]].var.t = 1000;
    nodes[nodeindex[id]].var.t0 = 1000;
    std::cout << "t for id " << id << " is 1000" << endl;
  }
  else 
  {
    nodes[nodeindex[id]].var.t = 0.0;
    nodes[nodeindex[id]].var.t0 = 0.0;
  }

  return(0); 
};

// -------------------------------------------------------------------------

int user::Bound(int id) 
{
  NodeData x;
  x = nodes[nodeindex[id]];
  if (x.x1 == 0) 
  {
//    std::cout << "Bound: t for id " << id << " is 1.0" << endl;
    nodes[nodeindex[id]].var.t = 1000;
    nodes[nodeindex[id]].var.t0 = 1000;
  }

  return(0); 
};


// -------------------------------------------------------------------------

int user::PutBack(int id) 
{
  nodes[nodeindex[id]].var.t0 = nodes[nodeindex[id]].var.t;
  return(0); 
};

// -------------------------------------------------------------------------

int user::Calculate(int id) 
{
  int i, j;
  NodeData x;
  double flux[4];
  GridVars xnbr[4][2];
  x = nodes[nodeindex[id]];
  nodes[nodeindex[id]].var.t=nodes[nodeindex[id]].var.t0;
//  std::cout << "Calculating for id " << id << endl;

  // walls are to be skipped
  for (i = 0; i < 4; i++) {
    if (x.nbr[i][0] == -1 || x.nbr[i][1] == -1) {
//       std::cout << "id " << id << " is on wall" << endl;
       return(0);
    }
  }

  for (i = 0; i < 4; i++) {
    if (x.nbr[i][0] > 0) 
    if(nodeindex[x.nbr[i][0]]>=0)
	{
      xnbr[i][0] = nodes[nodeindex[x.nbr[i][0]]].var;
     if(x.nbr[i][1]>0) 
	if(nodeindex[x.nbr[i][1]]>=0){
      xnbr[i][1] = nodes[nodeindex[x.nbr[i][1]]].var;
     } 
    }
  }

  for (i = 0; i < 4; i++) {
    flux[i] = 0.0;
    if (x.nbr[i][1]==0) {
      flux[i] = (x.var.t0 - xnbr[i][0].t0);
     if(GetDepth(x.id)!=GetDepth(x.nbr[i][0]))flux[i]=flux[i]*2/3;
    } else {
		float p=xnbr[i][0].t0+xnbr[i][1].t0;
		cout<<"p is"<<p<<endl;
		flux[i]=(2*x.var.t0-p)*2/3;
		cout<<2*x.var.t0<<" "<<p<<" "<<flux[i]<<endl;
//      std::cout << "Depth of " << x.nbr[i][0] << 
//         " along " << i << " does not match that of " << x.id << endl;
    }
//      std::cout << "flux from " << x.nbr[i][0] << " is " << flux[i] << endl;
//      std::cout << "my t0=" << x.var.t0 << " nbr t0=" << xnbr[i][0].t0 << endl;

  }

  nodes[nodeindex[id]].var.t += 0.1*(flux[0]+flux[1]-flux[2]-flux[3]);
//  cout<<"my 1="<<nodes[nodeindex[id]].var.t<<endl;
  return(0); 
}

// -------------------------------------------------------------------------

int user::UnRefineCriterion(int id)
{
  int i, j;
  NodeData x;
  x = nodes[nodeindex[id]];
  if (x.var.t < 0.5) return (0);
}

// -------------------------------------------------------------------------

void user::TraverseNodes(int (user::*pt2member)(int id), int mytcode)
{
  int id;

  switch (mytcode)
  {

    case 0:
      for(int i = 0; i < nodes.size(); i++) {
        id = nodes[i].id;
        (*this.*pt2member)(id);
      }
      break;

    case IREFINE:
      for(int i = 0; i < nodes.size(); i++) {
        id = nodes[i].id;
        int refinable = (*this.*pt2member)(id);
        if (refinable) Divide.push(id);
      }
      analyze();
      break;

    case IUNREFINE:
      for(int i = 0; i < nodes.size(); i++) {
        id = nodes[i].id;
        int unrefinable = (*this.*pt2member)(id);
        if (unrefinable == 0) UnDivide.insert(id/5);
      }
      analyze();
      break;

    default:
      std::cout << "Invalid code received in qtree::TraverseNodes\n";
  }

return;
}

// -------------------------------------------------------------------------

void varsplit(GridVars in, GridVars *out)
{
  for(int i = 0; i < 4; i++) {
    out[i].t = in.t;
    out[i].t0 = in.t0;
  }
}

// -------------------------------------------------------------------------

GridVars varjoin(GridVars *in)
{
  GridVars out;
  out.t = (in[0].t + in[1].t + in[2].t + in[3].t ) / 4;
  out.t0 = (in[0].t0 + in[1].t0 + in[2].t0 + in[3].t0 ) / 4;
  return(out);
}

// -------------------------------------------------------------------------

int user::testunref(int j)
{
  long int si=nodes.size();
//  UnDivide.clear();
  cout<<"Testing started .... \n";
  long int a;
  for(int i=0;i<si;i++)
	{
		int p=0;
/*		for(int j=0;j<4;j++)
			if(GetNbr(nodes[i].id/5,j+1)==-1)p=1;
/		if(p==0)if(nodes[i].endnode=='b')qjoin(nodes[i].id/5);*/
		if((fabs(nodes[i].x2-(nx-1)/2)==0)&&(fabs(nodes[i].y2-(nx-1)/2)==0))
		{
			if(nodes[i].endnode=='b'){qjoin(nodes[i].id/5);a=nodes[i].id/5;}
		/*	NbrLess.push(nodes[i].id);
			for (int j=0;j<4;j++)
			{
				NbrLess.push(nodes[i].nbr[j][0]);
				if(nodes[i].nbr[j][1]!=0)NbrLess.push(nodes[i].nbr[j][1]);
			}*/
		
		}
	}
   clnuptree();
   SetNbrs();
 /*   for(int i=0;i<nodes.size();i++)
	{
		if(nodes[i].nbr[3][0]==-1)nodes[i].var.t0=nodes[i].var.t=1000;
		else nodes[i].var.t0=nodes[i].var.t=0;
	}
        qsplit(nodes[nodeindex[a]]);
	nodes[nodeindex[a]].endnode='a';
   clnuptree();*/
   cout<<"done \n";
}
// ----------- end of user.cpp --------------------------
