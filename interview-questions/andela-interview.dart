/**
 * 
 * Given a cyclic array, write a function to reverse from any k number (where k is an input to the function).
 *  You can also treat this as elements in an array
Example:
Input: [1,2,3,4,5,6,7,8] K = 3
Output: [3,2,1,8,7,6,5,4]
Input: [1,2,3,4,5,6,7,8] K = 5
Output: [5,4,3,2,1,8,7,6]
 */

// sort
// reverse
// change the k element and the end element
// sliding window to exchange any number after k element

class Solution {
  static List<int> slidingWindow(List<int> arr, int k) {
    if (k > arr.length) {
      throw "Out of bound";
    }

    List<int> arr2 = arr.sublist(k);
    List<int> arr3 = arr.sublist(0, k);

    arr2 = List.from(arr2.reversed);
    arr3 = List.from(arr3.reversed);

    return [...arr3, ...arr2];
  }
}

void main(List<String> args) {
  print(Solution.slidingWindow([1, 2, 3, 4, 5, 6, 7, 8], 3));
}
