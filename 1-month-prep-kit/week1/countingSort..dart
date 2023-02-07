//
// Another sorting method, the counting sort, does not require comparison. Instead, you create an integer array whose index range covers the entire range of values in your array to sort. Each time a value occurs in the original array, you increment the counter at that index. At the end, run through your counting array, printing the value of each non-zero valued index that number of times.

// Example

// All of the values are in the range , so create an array of zeros, . The results of each iteration follow:

// i	arr[i]	result
// 0	1	[0, 1, 0, 0]
// 1	1	[0, 2, 0, 0]
// 2	3	[0, 2, 0, 1]
// 3	2	[0, 2, 1, 1]
// 4	1	[0, 3, 1, 1]
// The frequency array is . These values can be used to create the sorted array as well: .

// link -> https://www.hackerrank.com/challenges/one-month-preparation-kit-countingsort1/problem?isFullScreen=true&h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=one-month-preparation-kit&playlist_slugs%5B%5D=one-month-week-one
import 'dart:math' as math;

class Solution {
  List<int> countingSort(List<int> arr) {
    List<int> finalArr = [];

    //  define result for zero-length arrays
    if (arr.length == 0) {
      return finalArr;
    }
    for (int i = 0; i <= arr.reduce(math.max); i++) {
      finalArr.add(0);
    }

    for (int i = 0; i < arr.length; i++) {
      finalArr[arr[i]] += 1;
    }
    return finalArr;
  }
}

void main(List<String> args) {
  List<int> testList = [1, 1, 3];

  Solution testSolution = Solution();
  List<int> testAns = testSolution.countingSort(testList);
  print(testAns);
}
