/*
link -> https://www.hackerrank.com/challenges/one-month-preparation-kit-the-birthday-bar/problem?isFullScreen=true&h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=one-month-preparation-kit&playlist_slugs%5B%5D=one-month-week-one&h_r=next-challenge&h_v=zen

*/

class Solution {
  int sumOfList(List<int> list) {
    int answer = 0;

    for (int i = 0; i < list.length; i++) {
      answer += list[i];
    }

    return answer;
  }

  int birthday(List<int> s, int d, int m) {
    int answer = 0;

    for (int i = 0; i < (s.length - m + 1); i++) {
      if (sumOfList(s.sublist(i, i + m)) == d) {
        answer += 1;
      }
    }
    return answer;
  }
}

void main(List<String> args) {
  List<int> testArray = [2, 2, 1, 3, 2];
  Solution testSolution = Solution();
  int result = testSolution.birthday(testArray, 4, 2);
  print(result);
}
