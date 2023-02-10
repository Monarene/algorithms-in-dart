/**
 * 
 * Link => https://www.hackerrank.com/challenges/one-month-preparation-kit-tower-breakers-1/problem?isFullScreen=true&h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=one-month-preparation-kit&playlist_slugs%5B%5D=one-month-week-two
 * 
 * n is the number of the towers, m is the height of tower 
 */

class Solution {
  static int towerBreakers(int n, int m) {
    if (m == 1) return 2;
    if (n % 2 == 0) return 2;

    return 1; 
  }
}

void main(List<String> args) {
  print(Solution.towerBreakers(2, 6)); 
}
