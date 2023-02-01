//  Link to question => https://leetcode.com/problems/median-of-two-sorted-arrays/description/

class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    List<int> answerList = [];

    nums1.forEach((element) {
      answerList.add(element);
    });

    nums2.forEach((element) {
      answerList.add(element);
    });

    answerList.sort();
    int middleIndex = answerList.length ~/ 2;

    if (answerList.length % 2 == 0) {
      return (answerList[middleIndex] + answerList[middleIndex - 1]) / 2;
    }

    return answerList[middleIndex].toDouble();
  }
}

void main(List<String> args) {
  List<int> nums1 = [1, 3, 4];
  List<int> nums2 = [2];
  Solution testSolution = Solution();
  double answer = testSolution.findMedianSortedArrays(nums1, nums2);
  print(answer);
}
