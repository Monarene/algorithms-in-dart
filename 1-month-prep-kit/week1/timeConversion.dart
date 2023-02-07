/** 
Given a time in -hour AM/PM format, convert it to military (24-hour) time.

Note: - 12:00:00AM on a 12-hour clock is 00:00:00 on a 24-hour clock.
- 12:00:00PM on a 12-hour clock is 12:00:00 on a 24-hour clock.

Example


Return '12:01:00'.


Return '00:01:00'.

Function Description

Complete the timeConversion function in the editor below. It should return a new string representing the input time in 24 hour format.

timeConversion has the following parameter(s):

string s: a time in  hour forma


Link => https://www.hackerrank.com/challenges/one-month-preparation-kit-time-conversion/problem?isFullScreen=true&h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=one-month-preparation-kit&playlist_slugs%5B%5D=one-month-week-one
'''

*/


class Solution {
  String timeConversion(String s) {
    String answer = '';

    if (s.substring(0, 2) == "12" && s.substring(8) == "AM") {
      answer = "00" + s.substring(2, 8);
      return answer;
    }

    if (int.parse(s.substring(0, 2)) < 12 && s.substring(8) == "PM") {
      String newFront = (int.parse(s.substring(0, 2)) + 12).toString();
      answer = newFront + s.substring(2, 8);
      return answer;
    }

    return s.substring(0, 8);
  }
}

void main(List<String> args) {
  String testExample = '12:05:45AM';
  Solution testSolution = Solution();
  String answer = testSolution.timeConversion(testExample);
  print(answer);
}
