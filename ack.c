#include <stdio.h>

int ack(int m,int n){
	if(m==0){
		return 2*n;
	}
	else if(n==0 && m>0){
		return 0;
	}
	else if(n==1 && m>0){
		return 2;
	}
	else{
		return ack(m-1,ack(m,n-1));
	}
}

int main(){
	printf("ack(1,0): %d\n",ack(1,0));
	printf("ack(0,3): %d\n",ack(0,3));
	printf("ack(5,1): %d\n",ack(5,1));
	printf("ack(2,3): %d\n",ack(2,3));
}
