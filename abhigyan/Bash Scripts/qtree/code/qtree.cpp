// ---------------------------------------------
// MM2090 : Introduction to Scientific Computing
// Author: Gandham Phanikumar
// Example code to try out "make"
// qtree.cpp contains qtree class definition
// ---------------------------------------------

#include "qtree.hpp"
GridVars DEFVAR={0.0, 0.0};

qtree::qtree() {
  // empty constructor to make inheritance easy
}

// --------------------------------------------------

int qtree::qwrite(char *QueueDataFile)
{
  ofstream data(QueueDataFile,ios::binary);
  NodeData root;
  long int imax=nodes.size();
  for(int i=0;i<imax;i++)
  {
    root=nodes[i];
    data.write((char*)&root, sizeof(root));
  }
  data.close();
}

// --------------------------------------------------

int qtree::qread(char *QueueDataFile)
{
  ifstream data(QueueDataFile,ios::binary);
  NodeData root;
      
  while(!data.eof())
  {
    data.read((char*)&root,sizeof(root));
    nodes.push_back(root);
  }
  data.close();
}

// ----------------------------------------------------

int qtree::qsplit(NodeData root) {
  int i;
  NodeData x;
  GridVars v[4];

  if(root.endnode == 'a') return(-1);
  if(GetDepth(root.id) >= maxdepth) return(-1);

  // change status of the splittable node to parent
  isParent.insert(root.id);

  for(int j = 0; j < 4; j++) 
  {
     NbrLess.push(root.nbr[j][0]);
     if(root.nbr[j][1] != 0) NbrLess.push(root.nbr[j][0]);
  }

  varsplit(root.var, v);
  // create child nodes to push into the deque nodes 
  for(i = 1; i < 5; i++ ) {
    x.id = 5*root.id + i;
    x.var = v[i-1];
    x.endnode = 'b';
    for(int j = 0; j < 4; j++) 
    {
      x.nbr[j][0] = x.nbr[j][1] = -1;
    }
    // Sets the x and y coordinates 
    switch (i)
    {
      case 1:
        x.x1 = root.x1;
        x.x2 = (root.x1 + root.x2)/2;
        x.y1 = root.y1;
        x.y2 = (root.y1 + root.y2)/2;
        break;
      case 2:
        x.x1 = (root.x1 + root.x2 + 1)/2;
        x.x2 = root.x2;
        x.y1 = root.y1;
        x.y2 = (root.y1 + root.y2)/2;
        break;
      case 3:
        x.x1 = root.x1;
        x.x2 = (root.x1 + root.x2)/2;
        x.y1 = (root.y1 + root.y2 + 1)/2;
        x.y2 = root.y2;
        break;
      case 4:
        x.x1 = (root.x1 + root.x2 + 1)/2;
        x.x2 = root.x2;
        x.y1 = (root.y1 + root.y2 + 1)/2;
        x.y2 = root.y2;
        break;
    }
    x.created=1;
    nodes.push_back(x);
    NbrLess.push(x.id);
    QtreeLog << "qsplit on id=" << x.id << endl;
  }
  return(0);
}

// ----------------------------------------------------------------

/*int qtree::mkmap() {
  long int i,b=0;

//  nodeindex.clear();
//  for(i=0;i<nodeindex.size();i++)nodeindex[i]=-2;
  for(i=0;i < nodes.size();i++)if(nodes[i].id>b)b=nodes[i].id;
  for(i=0;i<b;i++) nodeindex[i]=-2;
  for(i = 0; i < nodes.size(); i++) {
      nodeindex[nodes[i].id] = i;
  }
  
  std::cout << "nodeindex created." << endl;
  std::cout << "Number of nodes in the index = " << nodeindex.size() << endl;

  return(0);
}*/

int qtree::mkmap() {
  long int i;
  long int b=0;
//  printnodes();
//  nodeindex.clear();
  for(i=0;i < nodes.size();i++)if(nodes[i].id>b)b=nodes[i].id;
  for(i=0;i<b;i++) nodeindex[i]=-2;
  for(i = 0; i < nodes.size(); i++) {
    if(nodes[i].endnode=='b')nodeindex[nodes[i].id] = i;
  }
  
  std::cout << "nodemap created. " << "Number of nodes=" << nodeindex.size() << "\n";

  return(0);
}

// ----------------------------------------------------------------------------
/*int qtree::aback()
{
	long int a=nodes.size();
	long int b=0;
        //while(nodes[b].endnode=='a')b++;
	for(long int i=0;i<a;i++)
	{
		if(nodes[i].endnode=='a')
		{
			NodeData r;
			r=nodes[i];
			nodes[i]=nodes[b];
			nodes[b]=r;
			b++;
		}
	}
}*/
int qtree::aback()
{
	long int max=nodes.size();
	long int j=0,l=0;
	NodeData root,swap;
	for(long int k=0;(k<max) && (l==0);k++){if (nodes[k].endnode!='a') 
					{
						swap=nodes[k];
						nodes[k]=nodes[0];
						nodes[0]=swap;
						l=1;
					}
				   }
	for(long int i=0;i<max;i++)
	{
		
		if(nodes[i].endnode=='a')
		{
			//while(nodes[j].endnode=='a')j++;
			swap=nodes[i];
			nodes[i]=nodes[j];
			nodes[j]=swap;
			j++;
		}
	}
}

//-------------------------------------------------------------------------------
int qtree::analyze() {
  long int i;
  int error = 0;
  NodeData root;

  mkmap();

  std::cout << "set UnDivide has " << UnDivide.size() << " elements" << endl;

  std::set<long int>::iterator UnDivideIterator;
  for (UnDivideIterator = UnDivide.begin(); 
       UnDivideIterator != UnDivide.end(); UnDivideIterator++) {
    i = *UnDivideIterator;
    error = qjoin(i);
    if(error == -1) { std::cout << "error joining " << i << endl; break; }
  }
  UnDivide.clear();

  std::cout << "queue Divide has " << Divide.size() << " elements" << endl;
  while(!Divide.empty()) {
    i = Divide.front();
    error = qsplit(nodes[nodeindex[i]]);
    nodes[nodeindex[i]].endnode = 'a';
    if(error == -1) { std::cout << "error splitting " << i << endl; break; }
    Divide.pop();
  }

  clnuptree();
 // mkmap();

  SetNbrs();

  std::cout << "Total nodes = " << nodes.size() << "\n";
  return(0);
}

// ----------------------------------------------------------------------------

int qtree::clnuptree() {
  long int id = 0;
  int ichop = 0;
  std::deque<NodeData>::iterator beg, end;

//  aback(); 

  std::cout << "sorting ... ";
  beg = nodes.begin();
  end = nodes.end();
  //sort(beg,end);
  std::cout << "done.\n";
  aback();
  std::cout << "cleaning up ... ";
  for(long int i = 0; i < nodes.size(); i++) {
    if(nodes[i].endnode == 'b') break;
    ichop++;
  }
  nodes.erase(nodes.begin(), nodes.begin() + ichop);
  std::cout << "done.\n";
  std::cout << "culled " << ichop << " nodes\n";

  mkmap();

  return(0);
}

// ---------------------------------------------------------------------------

void qtree::printnodes(const char *FileName) {
  ofstream prt(FileName);
  long int imax;
  long int i;

  imax = nodes.size();
  for(i = 0; i < imax; i++ ) {
    if(nodes[i].created==1)
    if(nodes[i].id>0)
    {
       prt << nodes[i].x1 << " " << nodes[i].y1 << " ";
       prt << nodes[i].x2 << " " << nodes[i].y2 << endl;
    }
  }
  prt.close();

  return;
}

// ---------------------------------------------------------------------------

long int qtree::son(int p, short int d)
{
  if(isParent.count(p) != 0) {
    return(p*5 + d);
  }
  else {
    return(p);
  }
}

// ---------------------------------------------------------------------------

long int qtree::GetNbr(int p, short int d) {
  int a = -1;
  if(adjacent[d-1][p%5-1]) {
    if(p > 0) a = GetNbr(p/5, d);
  }
  else {
    if(p > 0) a = p/5;
    else a = -1;
  }
  return(son(a, reflect[d-1][p%5-1]));
}

// ----------------------------------------------------------------------------

int qtree::SetNbrs() {
  int i;
  int j;
  long int nid;
  while(!NbrLess.empty()) {
    nid = NbrLess.front();
    if(nid <= 0) {
      NbrLess.pop();
    }
    else {
      for(j = 1; j < 5; j++) {
	
	  if(nodeindex[nid]>=0)
          {
		nodes[nodeindex[nid]].nbr[j-1][0] = GetNbr(nid, j);
		nodes[nodeindex[nid]].nbr[j-1][1]=0;
				
	long int a=GetNbr(nid,j);
	if(nodeindex[a]==-2)
	{
	
		if(nodeindex[a/5]!=-2)
		{
	//		cout<<"hmmm \n";
			nodes[nodeindex[nid]].nbr[j-1][0]=a/5;
			nodes[nodeindex[nid]].nbr[j-1][1]=0;
		}
		else
		{
	//		cout<<"max \n";
			switch(j)
			{
				case 1: nodes[nodeindex[nid]].nbr[j-1][0]=a*5+3;
					nodes[nodeindex[nid]].nbr[j-1][1]=a*5+4;
					break;
				case 2: nodes[nodeindex[nid]].nbr[j-1][0]=a*5+1;
					nodes[nodeindex[nid]].nbr[j-1][1]=a*5+3;
					break;
				case 3: nodes[nodeindex[nid]].nbr[j-1][0]=a*5+1;
					nodes[nodeindex[nid]].nbr[j-1][1]=a*5+2;	
					break;
				case 4: nodes[nodeindex[nid]].nbr[j-1][0]=a*5+2;
					nodes[nodeindex[nid]].nbr[j-1][1]=a*5+4;
					break;
			}
			
					
		}
	}

	
	}
      } 
      NbrLess.pop();
    }
    
  }
  return(0);
}

/*int qtree::SetNbrs() {
  int i;
  int j;
  long int nid;
  while(!NbrLess.empty()) {
    nid = NbrLess.front();
    if(nid <= 0) {
      NbrLess.pop();
    }
    else {
      for(j = 1; j < 5; j++) {
	  if(nodeindex[nid]>0)
          {
		nodes[nodeindex[nid]].nbr[j-1][0] = GetNbr(nid, j);
		nodes[nodeindex[nid]].nbr[j-1][1]=0;
				
	long int a=GetNbr(nid,j);
	if(nodeindex[a]==-2)
	{
		long int b=a/5;
		if(nodeindex[b]!=-2)
		{
			nodes[nodeindex[nid]].nbr[j-1][0]=b;
			nodes[nodeindex[nid]].nbr[j-1][1]=0;
		}
		else
		{
			switch(j)
			{
				case 1: nodes[nodeindex[nid]].nbr[j-1][0]=a*5+3;
					nodes[nodeindex[nid]].nbr[j-1][1]=a*5+4;
					break;
				case 2: nodes[nodeindex[nid]].nbr[j-1][0]=a*5+1;
					nodes[nodeindex[nid]].nbr[j-1][1]=a*5+3;
					break;
				case 3: nodes[nodeindex[nid]].nbr[j-1][0]=a*5+1;
					nodes[nodeindex[nid]].nbr[j-1][1]=a*5+2;	
					break;
				case 4: nodes[nodeindex[nid]].nbr[j-1][0]=a*5+2;
					nodes[nodeindex[nid]].nbr[j-1][1]=a*5+4;
					break;
			}
			
					
		}
	}
//	else nodes[nodeindex[nid]].nbrval[j-1]=nodes[nodeindex[a]].value;
	
	}
      } 
      NbrLess.pop();
/*      for(int j=0;j<=3;j++)
      {
	  if(nodeindex[nodes[nid].nbr[j]]<0)
	  { 
		long int a=nodes[nid].nbr[j];
		if(nodeindex[a/5]>0){nodes[i].nbr[j];
    }
    
  }
  return(0);
}*/
// ----------------------------------------------------------------------------

int qtree::qjoin(int id) {
  GridVars in[4];
  for(int i=1;i<=4;i++)
  {
    if( nodeindex[id*5+i] < 0) return(-1);
    nodes[nodeindex[id*5+i]].endnode = 'a';
    nodes[nodeindex[id*5+i]].created = 0;
    for(int j=0;j<4;j++)
    {
      if(nodes[nodeindex[id*5+i]].nbr[j][0]/5 != id) NbrLess.push(nodes[nodeindex[id*5+i]].nbr[j][0]);
      if(nodes[nodeindex[id*5+i]].nbr[j][1] != 0) NbrLess.push(nodes[nodeindex[id*5+i]].nbr[j][1]);
    }
    in[i-1] = nodes[nodeindex[id*5+i]].var;
  }

   NodeData root;
   root.id = id;
   root.created = 1;
   root.endnode = 'b';
   root.x1 = nodes[nodeindex[id*5+1]].x1;
   root.y1 = nodes[nodeindex[id*5+1]].y1;
   root.x2 = nodes[nodeindex[id*5+4]].x2;
   root.y2 = nodes[nodeindex[id*5+4]].y2;
   
   root.var = varjoin(in);
   nodes.push_back(root);
   NbrLess.push(root.id);
   QtreeLog << "qjoin on id=" << root.id << endl;
}

// --------------------------------------------------------------------------

NodeData qtree::father(NodeData root) {
    int a=(root.id/5);

    NodeData newt;
    newt.id=a;
    newt.var = DEFVAR;
    for(int i=1;i<=4;i++)
        newt.var.t += nodes[nodeindex[a*5+i]].var.t;
    newt.var.t /= 4;
    newt.x1=nodes[nodeindex[a*5+1]].x1; 
    newt.y1=nodes[nodeindex[a*5+1]].y1;
    newt.x2=nodes[nodeindex[a*5+4]].x2;
    newt.y2=nodes[nodeindex[a*5+4]].y2;
    return newt;
}
    
// --------------------------------------------------------------------------

int qtree::level()
{
        int imax=nodes.size();
        NodeData root;
        for(int i=0;i<imax;i++)
        {
                root=nodes[i];
                int check=0;
                for(int j=0;j<=3;j++)
                {
                        if((nodes[i].nbr[j][1]!=0))
                        {
                        if((nodeindex[nodes[i].nbr[j][1]]==-2)||(nodeindex[nodes[i].nbr[j][0]]==-2))
                        {
                                Divide.push(i);
                        }
                        }

		}
                
        }
        while(!Divide.empty())
        {
		root=nodes[Divide.front()];
               if(root.endnode=='b')
		{
                qsplit(nodes[Divide.front()]);
                isParent.insert(nodes[Divide.front()].id);
		nodes[Divide.front()].endnode='a';
		}
                Divide.pop();
		
        }
}
         
// --------------------------------------------------------------------------

void qtree::Tree2Array(GridVars **var)
{
    int i1, i2, j1, j2, i, j;
    NodeData x;
    for(int k = 0; k < nodes.size(); k++) {
      x = nodes[k];
      i1 = x.x1;
      i2 = x.x2;
      j1 = x.y1;
      j2 = x.y2;
      if( i1 == i2 ) {
        var[i1][j1] = x.var;
      }
      else {
        for(i = i1; i <= i2; i++) {
          for(j = j1; j <= j2; j++) {
             var[i][j] = x.var;
          }
        }
      }
    }
    
}

// ----------------------------------------------------------------------------

void qtree::Array2Tree(GridVars **var)
{
    int i1, i2, j1, j2, i, j;
    int id;
    double tav;
    int nav;    
    std::deque<NodeData>::iterator iter;

    for(iter = nodes.begin(); iter < nodes.end(); iter++) {
      id = (*iter).id;
      i1 = (*iter).x1;
      i2 = (*iter).x2;
      j1 = (*iter).y1;
      j2 = (*iter).y2;
      if( i1 == i2 ) {
        nodes[nodeindex[id]].var = var[i1][j1];
      }
      else {
        tav = 0.0;
        nav = 0;
        for(i = i1; i <= i2; i++) {
          for(j = j1; j <= j2; j++) {
             tav += var[i][j].t;
             nav++;
          }
        }
        nodes[nodeindex[id]].var.t = tav/nav;
      }
    }
    
}

// ----------------------------------------------------------------------------

int qtree::GetDepth(long int id)
{
  int i = 0;
  while(id%5 != 0) {
    i++;
    id /= 5;
  }
  return (i);
}

// ----------------------------------------------------------------------------

int qtree::mkUniformTree(unsigned int depth) {
  NodeData root;

  // set the depth
  maxdepth = depth;
  if(depth < MINLEVEL) 
  {
    maxdepth = MINLEVEL;
    std::cout << "Overriding depth from " << depth << " to ";
    std::cout << maxdepth << endl;
  }
  if(depth > MAXLEVEL) 
  {
    maxdepth = MAXLEVEL;
    std::cout << "Overriding depth from " << depth << " to ";
    std::cout << maxdepth << endl;
  }
  nx = (int) pow(2, maxdepth);
  std::cout << "maxdepth=" << maxdepth << endl;
  std::cout << "equivalent array size will be " << nx << "x" << nx << endl;
  isParent.clear();
  root.id = 0;
  root.endnode = 'b';

  root.var = DEFVAR;
// algorithm borrowed from Samet's paper
// Setting coords for root node
  root.x1 = root.y1 = 0;
  root.y2 = root.x2 = nx-1;
// setting neighbors as nonexistent
  for(int j = 0; j < 4; j++) 
  {
    root.nbr[j][0] = root.nbr[j][1] = -1;
  }
  nodes.push_back(root);

  for(int j = 0; j < maxdepth; j++)
  {
    std::cout << "Round " << j << endl;
    std::cout << "Number of nodes=" << nodes.size() << endl;
    for(int i = 0; i < nodes.size(); i++) 
    {
      if(nodes[i].endnode == 'b' && GetDepth(nodes[i].id) <= maxdepth) Divide.push(nodes[i].id);
    }
    analyze();
  }

  QtreeLog.open("qtree.log");

  std::cout << "qtree now ready.\n";
  return(0);
}
// ------------- end of qtree.cpp ---------------------
