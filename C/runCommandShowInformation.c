#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
#include <sys/wait.h>

int main(const int argc, const char** argv){
  int currentPID = getpid();
  int partentPID = getppid();

  printf("Current PID: %d, Parent PID: %d\n", currentPID, partentPID);
  int e = fork();
  if(e == 0){
    int status = execlp(argv[1], argv[1], NULL);
    exit(status);
  }

  int status;
  wait(&status);
  printf("Forked process with PID: %d finished, status = %d\n", e, status);
  return 0;
}
