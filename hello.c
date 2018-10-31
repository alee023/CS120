#include<stdio.h>
int main() {

	// int i, j ;
	for( int i = 1; i < 6; i ++ ) {
		for( int ii = 1; ii < 6; ii ++ ) {
			printf( "%3d", i * ii );
		}	
		printf( "\n" );	
	} 
}
