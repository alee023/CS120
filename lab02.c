#include <stdio.h>

int maximum( int *array, int length ) {
  int m = array[ 0 ] ;

  for( int i = 1 ; i < length ; i ++ ) {
    if( array[ i ] > m ) {
      m = array[ i ] ;
    }
  }

  return m ;
}

int minimum( int *arr, int len ) {
  int n = arr[ 0 ] ;
  for( int i = 1; i < len; i++ ) {
    if( arr[ i ] < n ) {
      n = arr[ i ] ;
    }
  }

  return n ;
}

int total( int *arr, int len ) {
  int sum = 0 ;
  for( int i = 0 ; i < len; i++  ) {
     sum += arr[ i ] ;
  }

  return sum ;
}

int avg( int *arr, int len ) {
  return( total( arr, len ) / len ) ;
}

int main() {
  int a[] = { 3, 8, 2, 9, 4 } ;
  printf( "This array is { 3, 8, 2, 9, 4 }\n" ) ;
  printf( "The maximum is %d\n", maximum( a, 5 )) ;
  printf( "The minimum is %d\n", minimum( a, 5 )) ;
  printf( "The total is %d\n", total( a, 5 )) ;
  printf( "The average is %d\n", avg( a, 5 )) ;
}

