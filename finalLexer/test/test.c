#include <stdio.h>
int main(){
	char colors[86][15];
	char tokens[48][15];
	int i;
	for(i=0;i<86;i++){
		scanf("%s",colors[i]);
	}
	for(i=0;i<48;i++){
		scanf("%s",tokens[i]);
	}
	for(i=0;i<48;i++){
		printf("%s\t\t%s\n",tokens[i],colors[i] );
	}
	return 0;
}
