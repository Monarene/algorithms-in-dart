/**
 * 
 * https://www.hackerrank.com/challenges/one-month-preparation-kit-zig-zag-sequence/problem?isFullScreen=true&h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=one-month-preparation-kit&playlist_slugs%5B%5D=one-month-week-two
 */

class Solution {
  static List<int> zigZaq1(int n, List<int> arr) {
    arr.sort();
    int m = n ~/ 2;
    int temp = arr[m];
    arr[m] = arr[n - 1];
    arr[n - 1] = temp;

    //  setup the exchange
    int ed = m + 1;
    int st = n - 2;

    while (ed <= st) {
      int temp = arr[ed];
      arr[ed] = arr[st];
      arr[st] = temp;

      ed += 1;
      st -= 1;
    }

    return arr;
  }


}

void main(List<String> args) {
  List<int> testArray = [1, 2, 3, 4, 5];
  List<int> answer = Solution.zigZaq1(3, testArray);
  print(answer);
}
