double cbroot(double x){
	double y = x/2.0;
	double upper = x;
	double lower = 0;
	while(1){
		if((y*y*y-x)>0.00001){
			upper=y;
		//	printf("y is greater than x^2");
		}
		else if((x-y*y*y)>0.00001){
			lower=y;
		//	printf("y is lesser than x^2");
		}
		else if(mod(x-y*y*y)<0.00001){
			return y;
		}
		y = (upper+lower)/2.0;
	}
}
