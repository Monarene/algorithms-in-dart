/**
 * This is an algorithm to find whether 
 */
import 'dart:math' as math;

class Solution {
  static bool isPrime(int n) {
    int sqrtn = math.sqrt(n) ~/ 1;

    for (int i = 2; i <= sqrtn; i++) {
      if (n % i == 0) {
        return false;
      }
    }

    return true;
  }

  int findAllSquareRoots(int n) {
    int answer = 0;

    return answer; 
  }
}

void main(List<String> args) {
  print(Solution.isPrime(4));
}
