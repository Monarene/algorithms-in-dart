/**
 * 
 * IsPalindrome 
 */

class Solution {
  static bool isPalindrome(String s) {
    return s == s.split('').reversed.join();
  }
}

void main(List<String> args) {
  print(Solution.isPalindrome('bab'));
}
