import 'dart:math' as math;

class Solution {
  static int drawingBook(int n, int p) {
    int answer = 0;

    if (n == 1 || n == p) {
      return 0;
    }

    if (p % 2 == 0) {
      p = p + 1;
    }

    if (n % 2 != 0) {
      return math.min(((n - 1) ~/ 2), ((p - n) ~/ 2));
    } else {
      return math.min((n ~/ 2), (p - 1 - n) ~/ 2);
    }
  }
}

void main(List<String> args) {
  int answer = Solution.drawingBook(2, 6);
  print(answer);
}
