#include <stdio.h>
#include <unistd.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <stdlib.h>

int main(const int argc, const char** argv){
  for(int i = 1; i < argc; i++){
    int e = fork();
    if (e == 0) {
      execlp(argv[i], argv[i], NULL);
      exit(0);
    }
  }

  return 0;
}
