#include <stdio.h>
#define DIM 11000

bool foo;

int main()
{
  register long i,j;
  static long matrix[DIM][DIM];
  for(j=0;j<DIM;j++) {
    for(i=0;i<DIM;i++) {
      matrix[i][j]=1;
    }
  }
  return 0;
}
