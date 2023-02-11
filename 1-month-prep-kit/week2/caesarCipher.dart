/**\
 * 
 * Link => https://www.hackerrank.com/challenges/one-month-preparation-kit-caesar-cipher-1/problem?isFullScreen=true&h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=one-month-preparation-kit&playlist_slugs%5B%5D=one-month-week-two
 */

class Solution {
  static String iterateString(String s, int k) {
    String alphabet = 'abcdefghijklmnopqrstuvwxyz';

    if (alphabet.contains(s)) {
      int stringIndex = alphabet.indexOf(s) + k;
      if (stringIndex > 25) {
        stringIndex = stringIndex - 26;
        return alphabet[stringIndex];
      } else {
        return alphabet[stringIndex];
      }
    }

    if (!alphabet.contains(s) && alphabet.contains(s.toLowerCase())) {
      s = s.toLowerCase();
      int stringIndex = alphabet.indexOf(s) + k;
      if (stringIndex > 25) {
        stringIndex = stringIndex - 26;
        return alphabet[stringIndex].toUpperCase();
      } else {
        return alphabet[stringIndex].toUpperCase();
      }
    }

    return s;
  }

  String caesarCipher(String s, int k) {
    String newString = '';

    for (int i = 0; i < s.length; i++) {
      String newValue = iterateString(s[i], k);
      newString += newValue;
    }

    return newString;
  }
}

void main(List<String> args) {
  String s = 'middle-Outz';
  Solution testSolution = Solution();
  print(testSolution.caesarCipher(s, 2));
}
