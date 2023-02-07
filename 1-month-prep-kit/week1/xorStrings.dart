/** 
link -> https://www.hackerrank.com/challenges/one-month-preparation-kit-strings-xor/problem?isFullScreen=true&h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=one-month-preparation-kit&playlist_slugs%5B%5D=one-month-week-one&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

*/

class Solution {
  String xorString(String x1, String y1) {
    String answer = '';

    for (int i = 0; i < x1.length; i++) {
      if (x1[i] != y1[i]) {
        answer += '1';
      } else {
        answer += '0';
      }
    }

    return answer;
  }
}

void main(List<String> args) {
  String x = '10101';
  String y = '00101';

  Solution testSolution = Solution();
  String testCase = testSolution.xorString(x, y);
  print(testCase);
}
