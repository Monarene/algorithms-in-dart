/**
 * 
 * link -> https://www.hackerrank.com/challenges/one-month-preparation-kit-two-arrays/problem?isFullScreen=true&h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=one-month-preparation-kit&playlist_slugs%5B%5D=one-month-week-one
 */

class Solution {
  String permutingTwoArrays(List<int> arr1, List<int> arr2, int k) {
    arr1.sort();
    arr2.sort();
    arr2 = List.from(arr2.reversed);
    for (int i = 0; i < arr1.length; i++) {
      if ((arr1[i] + arr2[i]) < k) {
        return "NO";
      }
    }

    return "YES";
  }
}

void main(List<String> args) {
  List<int> testArr1 = [2, 1, 3];
  List<int> testArr2 = [7, 8, 9];
  Solution testSolution = Solution();
  String ans = testSolution.permutingTwoArrays(testArr1, testArr2, 10);
}
