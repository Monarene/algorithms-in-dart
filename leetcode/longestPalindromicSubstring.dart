// solution => https://www.youtube.com/watch?v=XYQecbcd6_c
// Link to problems => https://leetcode.com/problems/longest-palindromic-substring/description/

// Understanding the left and right window of things and also the sliding window way of doing things

class Solution {
  String longestPalindrome(String s) {
    String resString = "";
    int resLen = 0;

    for (int i = 0; i < s.length; i++) {
      // odd length
      int l = i;
      int r = i;
      while (l >= 0 && r < s.length && s[l] == s[r]) {
        if ((r - l + 1) > resLen) {
          resLen = r - l + 1;
          resString = s.substring(l, r + 1);
        }
        l -= 1;
        r += 1;
      }

      // even length
      int l2 = i;
      int r2 = i + 1;
      while (l2 >= 0 && r2 < s.length && s[l2] == s[r2]) {
        if ((r2 - l2 + 1) > resLen) {
          resLen = r2 - l2 + 1;
          resString = s.substring(l2, r2 + 1);
        }
        l2 -= 1;
        r2 += 1;
      }
    }

    return resString;
  }
}

void main(List<String> args) {
  String s1 = "babad";
  String s2 = "cbbd";
  Solution testSolution = Solution();
  String answer = testSolution.longestPalindrome(s1);
  print(answer);
}
