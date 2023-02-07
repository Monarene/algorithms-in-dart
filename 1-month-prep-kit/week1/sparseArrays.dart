/** 
There is a collection of input strings and a collection of query strings. For each query string, determine how many times it occurs in the list of input strings. Return an array of the results.

Example
strings = ["ab", 'ab', 'abc']
queries = ["ab", 'abc', 'bc']

result  = [2, 1 , 0]


*/

class Solution {
  List<int> sparseArrays(List<String> queries, List<String> strings) {
    List<int> answerQuery = [];

    queries.forEach((element) {
      int elementCount = 0;
      while (strings.contains(element)) {
        elementCount++;
        int elementIndex = strings.indexOf(element);
        strings.removeAt(elementIndex);
      }
      answerQuery.add(elementCount);
    });

    return answerQuery;
  }
}

void main(List<String> args) {
  List<String> queryArray = ['ab', 'abc', 'bc'];
  List<String> stringArray = ['ab', 'ab', 'abc'];

  Solution testSolution = Solution();
  List<int> ans = testSolution.sparseArrays(queryArray, stringArray);
  print(ans);
}
/**
 * https://www.hackerrank.com/challenges/one-month-preparation-kit-the-birthday-bar/problem?isFullScreen=true&h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=one-month-preparation-kit&playlist_slugs%5B%5D=one-month-week-one&h_r=next-challenge&h_v=zen
 */

