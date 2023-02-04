/*** *
You will be given a list of 32 bit unsigned integers. Flip all the bits ( and ) and return the result as an unsigned integer.

Example

. We're working with 32 bits, so:

9 (base 10 ) -> base 2 (1001) -> unsigned 32 -> (00000000000000000000000001001) -> flip 111111111111111111111110110
-> change to base 10 -> 4294967286

Return .

Function Description

Complete the flippingBits function in the editor below.

flippingBits has the following parameter(s):

Link => https://www.hackerrank.com/challenges/one-month-preparation-kit-flipping-bits/problem?isFullScreen=true&h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=one-month-preparation-kit&playlist_slugs%5B%5D=one-month-week-one

int n: an integer
 **/

// Not solved
import 'dart:math' as math;

class Solution {
  String? return32Chars() {
    String? chars = '0';

    return chars.padLeft(32, '0');
  }

  String toBase2(int? num) {
    String answer = '';

    while (num! > 0 && answer != null) {
      if (num == 1) {
        answer = '1' + answer;
        break;
      }
      answer = (num % 2).toString() + answer;
      num = num ~/ 2;
    }

    return answer;
  }

  int? toBase10(int? num) {
    int finalAnswer = 0;
    String? stringVal = num.toString();
    List<String> solutionList = stringVal.split('');
    solutionList.asMap().forEach((key, value) {
      int valueInt = int.parse(value);
      int indexedMultiple =
          valueInt * math.pow(2, (solutionList.length - key - 1)) as int;
      finalAnswer += indexedMultiple;
    });

    return finalAnswer;
  }

  double? flippingBits(int n) {
    int? answer;
    String answerString = '';
    String charSet = '0'.padLeft(32, '0');
    String? base10Value = toBase2(n);
    String? newString = charSet.replaceRange(
        charSet.length - base10Value.length, null, base10Value);
    newString.split('').forEach((element) {
      if (element == '1') {
        answerString += '0';
      } else {
        answerString += '1';
      }
    });

    return double.parse(toBase10(int.parse(answerString)).toString());
  }
}

void main(List<String> args) {
  Solution testSolution = Solution();
  double? answer = testSolution.flippingBits(9);
  print(answer);
}
