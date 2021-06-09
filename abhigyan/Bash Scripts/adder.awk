#!/usr/bin/gawk

BEGIN{
	FS=",";
	avg1=0;
	avg2=0;
	avg3=0;
	avg4=0;
	count=0;
}
{
	x = $1+$2+$3;
	print($0,",",x);
	avg1=avg1+$1;
	avg2=avg2+$2;
	avg3=avg3+$3;
	avg4=avg4+x;
	count++;
}
END{
	avg1/=count;
	avg2/=count;
	avg3/=count;
	avg4/=count;
	print("Averages:");
	print(avg1,",", avg2,",", avg3,",", avg4);
	print("Lines parsed = ", count);
}
