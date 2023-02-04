/** 
Given an array of integers, where all elements but one occur twice, find the unique element.

Example
a = [1,2,4,2,1]

The unique element is 4.

Function Description

Complete the lonelyinteger function in the editor below.

lonelyinteger has the following parameter(s):

int a[n]: an array of integers

Link -> https://www.hackerrank.com/challenges/one-month-preparation-kit-lonely-integer/problem?isFullScreen=true&h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=one-month-preparation-kit&playlist_slugs%5B%5D=one-month-week-one


*/

class Solution {
  int? lonelyinteger(List<int> arr) {
    Map<int, int> arrMap = {};
    int answer = 0;
    arr.forEach((element) {
      if (arrMap.containsKey(element)) {
        answer = element;
      } else {
        arrMap[element] = 0;
      }
    });

    return answer;
  }
}

void main(List<String> args) {
  List<int> testArr = [1, 2, 3, 1];
  Solution test = Solution();
  int? answer = test.lonelyinteger(testArr);
  print(answer);
}
