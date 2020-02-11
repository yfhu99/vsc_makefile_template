#include "test2.h"
#include <iostream>
#include <vector>
#include <cmath>
using namespace std;
int main()
{
  cout << sum(1, 1) << endl;
  printf("Hello, world!\n");
  vector<int> s = {1, 2};
  s.push_back(3);
  for (auto v : s)
  {
    cout << v << endl;
  }
  double r = 2;
  cout << sqrt(2) << endl;
  return 0;
}