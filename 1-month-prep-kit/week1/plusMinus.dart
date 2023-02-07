/** 
'''
Given an array of integers, calculate the ratios of its elements that are positive, negative, and zero. Print the decimal value of each fraction on a new line with  places after the decimal.

Note: This challenge introduces precision problems. The test cases are scaled to six decimal places, though answers with absolute error of up to  are acceptable.

Example

There are  elements, two positive, two negative and one zero. Their ratios are ,  and . Results are printed as:

0.400000
0.400000
0.200000


 */

class Solution {
  void plusMinus(List<int> array) {
    int numOfPositive = 0;
    int numOfNegative = 0;
    int numberOfZeros = 0;

    array.forEach((element) {
      if (element < 0) {
        numOfNegative += 1;
      } else if (element == 0) {
        numberOfZeros += 1;
      } else {
        numOfPositive += 1;
      }
    });

    String rationOfZeros = (numberOfZeros / array.length).toStringAsFixed(6);
    String ratioOfPostives = (numOfPositive / array.length).toStringAsFixed(6);
    String ratioOfNegatives = (numOfNegative / array.length).toStringAsFixed(6);

    print("$ratioOfPostives \n$ratioOfNegatives \n$rationOfZeros");
  }
}

void main(List<String> args) {
  List<int> arr = [1, 1, 0, -1, -1];
  Solution testSolution = Solution();
  testSolution.plusMinus(arr);
}
