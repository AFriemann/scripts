#include <stdio.h>
#include <iostream>

int testFunction(int returnValue) {
  return returnValue;
}

int main(int argc, char **argv) {
  if (testFunction(0)) {
    std::cout << "return value 0 means true" << std::endl;
  } else if (testFunction(1)) {
    std::cout << "return value 1 means true" << std::endl;
  }

  return 0;
}
