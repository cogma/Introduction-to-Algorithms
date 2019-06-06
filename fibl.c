#include <stdio.h>
#include <stdlib.h>

int fibl(int n) {
  int pprev = 0;
  int prev = 1;
  int cur = 1;
  int i;
  for (i = 2; i <= n; i++) { 
    pprev = prev;
    prev = cur;
    cur = prev + pprev;
  }
  return cur;
}

int main(int argc, char** argv) {
  printf("%d\n", fibl(atoi(argv[1])));
}
