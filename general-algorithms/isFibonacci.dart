/**
 * 
 * 
 * Algorithm to check if a number is a fibonacci sequence
 */
import 'dart:math' as math;

class Solution {
  static bool isPerfectSquare(int x) {
    int sqrt = math.sqrt(x) ~/ 1;
    return sqrt * sqrt == x;
  }

  static bool isFibonacci(int x) {
    int upperBound = ((5 * x * x) + 4);
    int lowerBound = ((5 * x * x) - 4);

    return isPerfectSquare(lowerBound) || isPerfectSquare(upperBound);
  }
}

void main(List<String> args) {
  print(Solution.isFibonacci(5));
}
