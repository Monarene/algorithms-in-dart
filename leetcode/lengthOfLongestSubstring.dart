// link to the problem  - https://leetcode.com/problems/longest-substring-without-repeating-characters/
//  link to explanation -  https://www.youtube.com/watch?v=wiGpQwVHdE0

import 'dart:math';

class Solution {
  int lengthOfLongestSubstring(String s) {
    Set charSet = Set();

    int l = 0;
    int res = 0;

    for (int r = 0; r < s.length; r++) {
      while (charSet.contains(s[r])) {
        charSet.remove(s[l]);
        l += 1;
      }
      charSet.add(s[r]);
      res = max(res, r - l + 1);
    }

    return res;
  }
}

void main(List<String> args) {
  String s1 = "abcabcbb";
  String s2 = "bbbbb";
  Solution testSolution = Solution();
  int test = testSolution.lengthOfLongestSubstring(s2);
  print(test);
}
