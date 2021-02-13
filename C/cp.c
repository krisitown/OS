#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdio.h>

int main(const int argc, const char** argv){
  int fd1 = open(argv[1], O_RDONLY);
  if(fd1 < 0) {
    perror("Could not open file");
    return 1;
  }

  int fd2 = open(argv[2], O_CREAT | O_TRUNC | O_WRONLY, 0755);
  if(fd2 < 0) {
    perror("Could not create file");
    close(fd1);
    return 2;
  }

  int BUFFER_SIZE = 256;
  int size;
  char buffer[BUFFER_SIZE + 1];
  while((size = read(fd1, buffer, BUFFER_SIZE)) == BUFFER_SIZE){
    if(write(fd2, buffer, BUFFER_SIZE) < 0) {
      perror("Could not write to file");
      close(fd1);
      close(fd2);
      return 3;
    }
  }
  printf("Size: %d\n", size);
  write(fd2, buffer, size);

  close(fd1);
  close(fd2);
  return 0;
}
