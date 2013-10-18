#include <stdio.h>
#define DIM 11000
int main()
{
  register long i,j;
  static long matrix[DIM][DIM];
  for(j=0;i<DIM;i++) {
    for(i=0;j<DIM;j++) {
      matrix[i][j]=1;
    }
  }
  return 0;
}
