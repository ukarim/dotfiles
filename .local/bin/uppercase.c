#include <stdio.h>

#define MAX_LEN 256

int main(int argc, char *argv[]) {
  if (argc < 2) {
    printf("no strings provided\n");
    return 1;
  }

  for (int i = 1; i < argc; i++) { // skip first arg. it's program name
    char *str = argv[i];

    for (int j = 0; j < MAX_LEN; j++) {
      char ch = str[j];
      if (ch == '\0') {
        break;
      }
      if (ch > 96 && ch < 123) { // lowercase latin
        ch = ch - 32; // shift to uppercase
        str[j] = ch;
      }
    }
    printf("%s\n", str);
  }
  return 0;
}

