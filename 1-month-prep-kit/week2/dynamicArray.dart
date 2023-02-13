/**
 * 
 * TO BE CHECKED
 * The array of strings example is 1 x 
 * I dont understand this question
 * Link => https://www.hackerrank.com/challenges/one-month-preparation-kit-dynamic-array/problem?isFullScreen=true&h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=one-month-preparation-kit&playlist_slugs%5B%5D=one-month-week-two
 */

class Solution {
  static List<int> dynamicArray(int n, List<String> queries) {
    List<List<int>> arr = [];
    int lastAns = 0;
    List<int> ans = [];

    for (int i = 0; i < n; i++) {
      arr.add([]);
    }


    for (int i = 0; i < queries.length; i++) {
      String query = queries[i];
      int idx = (int.parse(query[1]) ^ lastAns) % n;
      if (int.parse(query[0]) == 1) {
        arr[idx].add(int.parse(query[2]));
      } else {
        lastAns = arr[idx][int.parse(query[2]) % (arr[idx].length)];
        ans.add(lastAns);
      }
    }
    return ans;
  }
}

void main(List<String> args) {
  List<String> testString = ['105', '117', '103', '210', '211'];
  print(Solution.dynamicArray(5, testString));
}
