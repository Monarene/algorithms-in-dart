/**
 * 
 * link => https://www.hackerrank.com/challenges/one-month-preparation-kit-sock-merchant/problem?isFullScreen=true&h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=one-month-preparation-kit&playlist_slugs%5B%5D=one-month-week-two
 */

class Solution {
  static int sockMerchant(int n, List<int> arr) {
    arr.sort();
    int answer = 0;

    while (!arr.isEmpty && arr.length != 1) {
      if (arr[0] == arr[1]) {
        answer++;
        arr.removeAt(0);
        arr.removeAt(1);
      } else {
        arr.removeAt(0);
      }
    }

    return answer;
  }
}

void main(List<String> args) {
  List<int> testArr = [1, 2, 1, 2, 1, 3, 2];
  int testSolution = Solution.sockMerchant(9, testArr);
  print(testSolution);
}
