/**
 * 
 * Link => https://www.hackerrank.com/challenges/one-month-preparation-kit-angry-children/problem?h_l=interview&isFullScreen=true&playlist_slugs%5B%5D%5B%5D=preparation-kits&playlist_slugs%5B%5D%5B%5D=one-month-preparation-kit&playlist_slugs%5B%5D%5B%5D=one-month-week-two

    Steps to solve this problem
    1. sort 
    2. Take the exact window size ( i + k - 1) and itarate through the entire array
    3. return the smallest of everytthing
    
    NOTE: Dont take the initial trap of only using the k element of the sorted array
 */

import 'dart:math' as math;

class Solution {
  static int minMax(List<int> arr, int k) {
    int ans = 1000000000;

    arr.sort();
    int i = 0;

    while ((i + k - 1) < arr.length) {
      ans = math.min(ans, (arr[i + k - 1] - arr[i]));
      i++;
    }

    return ans;
  }
}

void main(List<String> args) {
  List<int> testArr = [1, 4, 2, 7];
  print(Solution.minMax(testArr, 2));
}
