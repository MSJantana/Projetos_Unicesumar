#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define N        90
#define VALIDO   1
#define INVALIDO 0

int main(void){
      int i, j, status;
    int A[N];
    
    srand(time(NULL));

    for (i = 0; i < N; ++i) {
       do {
          A[i] = rand() % N;
          status = VALIDO;
          for (j = 0; j < i; ++j)
             if (A[i] == A[j])
                status = INVALIDO;
       } while (status == INVALIDO);   
       printf("%d ", A[i]);
    }

    return 0;
}
