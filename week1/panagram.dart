/** 
A pangram is a string that contains every letter of the alphabet. Given a sentence determine whether it is a pangram in the English alphabet. Ignore case. Return either pangram or not pangram as appropriate.

Example

We promptly judged antique ivory buckles for the next prize



The string contains all letters in the English alphabet, so return pangram.

Function Description

Complete the function pangrams in the editor below. It should return the string pangram if the input string is a pangram. Otherwise, it should return not pangram.

pangrams has the following parameter(s):

string s: a string to test
Returns

string: either pangram or not pangram

link -> https://www.hackerrank.com/challenges/one-month-preparation-kit-pangrams/problem?isFullScreen=true&h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=one-month-preparation-kit&playlist_slugs%5B%5D=one-month-week-one&h_r=next-challenge&h_v=zen
*/

class Solution {
  String pangram(String s) {
    String hold = 'abcdefghijklmnopqrstuvwxyz';

    s = s.replaceAll(' ', '');

    for (int i = 0; i < s.length; i++) {
      if (!hold.contains(s[i].toLowerCase())) {
        return 'not pangram';
      }
    }

    return 'pangram';
  }
}

void main(List<String> args) {
  String testString =
      'We promptly judged antique ivory buckles for the next prize';
  Solution testSolution = Solution();
  String answer = testSolution.pangram(testString);
  print(answer);
}
