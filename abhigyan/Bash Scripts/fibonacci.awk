#!/usr/bin/gawk -f
BEGIN{
}
{
	n=$1;
	t1=0;
	t2=1;
	sum;
	print "0"
	print "1"
	for(i=3;i<=n;i++){
		sum=t1+t2;
		print sum;
		t1=t2;
		t2=sum;
	}
}
END{
}
