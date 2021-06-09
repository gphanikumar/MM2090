// ---------------------------------------------
// MM2090 : Introduction to Scientific Computing
// Author: Gandham Phanikumar
// Example code to try out "make"
// protos.hpp contains prototype declarations
// ---------------------------------------------
#ifndef GridVarsProto

typedef struct{
  double t;
  double t0;
} GridVars;

void varsplit(GridVars in, GridVars *out);
GridVars varjoin(GridVars *in);

#define GridVarsProto

#endif

// -------- end of protos.hpp -------------------------
