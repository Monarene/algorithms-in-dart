/** 
Given five positive integers, find the minimum and maximum values that can be calculated by summing exactly four of the five integers. Then print the respective minimum and maximum values as a single line of two space-separated long integers.

Example

The minimum sum is  and the maximum sum is . The function prints

16 24

Sample Input

Link => https://www.hackerrank.com/challenges/one-month-preparation-kit-mini-max-sum/problem?isFullScreen=true&h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=one-month-preparation-kit&playlist_slugs%5B%5D=one-month-week-one

1 2 3 4 5
Sample Output

10 14

*/

class Solution {
  String minMaxSum(List<int> arr) {
    String answer = '';
    int hold1 = 0;
    int hold2 = 0;

    arr.sort();
    for (int i = 0; i < 4; i++) {
      hold1 += arr[i];
      hold2 += arr[arr.length - i - 1];
    }

    answer = '$hold1 $hold2';
    return answer;
  }
}

void main(List<String> args) {
  List<int> testArray = [1, 9, 3, 5, 7];
  Solution testSolution = Solution();
  String ans = testSolution.minMaxSum(testArray);
  print(ans);
}
