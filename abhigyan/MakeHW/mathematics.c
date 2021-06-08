#include <stdio.h>
#include "modlib.h"
#include "sqrtlib.h"
#include "cbrtlib.h"

int main(){
	float num;
	scanf("%f",&num);
	printf("%.010f\n",sqroot(num));
	printf("%.010f\n",cbroot(num));
	return 0;
}
