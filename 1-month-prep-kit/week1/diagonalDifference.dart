// Given a square matrix, calculate the absolute difference between the sums of its diagonals.

// For example, the square matrix  is shown below:

// 1 2 3
// 4 5 6
// 9 8 9
// The left-to-right diagonal = . The right to left diagonal = . Their absolute difference is .

// Function description

// Complete the  function in the editor below.

// diagonalDifference takes the following parameter:

// int arr[n][m]: an array of integers

// link ->  https://www.hackerrank.com/challenges/one-month-preparation-kit-diagonal-difference/problem?isFullScreen=true&h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=one-month-preparation-kit&playlist_slugs%5B%5D=one-month-week-one&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

import 'dart:math' as math;
import 'dart:convert';

class Solution {
  int? diagonalDifference(List<List<int>> arr) {
    int? difference;
    int lengthOfArr = arr.length;
    int firstSum = 0;
    int secondSum = 0;

    for (int i = 0; i < lengthOfArr; i++) {
      firstSum += arr[i][i];
      secondSum += arr[i][lengthOfArr - i - 1];
    }

    difference = firstSum - secondSum;

    return difference.abs();
  }
}

void main(List<String> args) {
  List<List<int>> testArr = [
    [1, 2, 3],
    [4, 5, 6],
    [9, 8, 9]
  ];
  Solution testSolution = Solution();
  int? testAns = testSolution.diagonalDifference(testArr);
  print(testAns);
}
