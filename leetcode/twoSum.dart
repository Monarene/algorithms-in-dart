// Link to problem https://leetcode.com/problems/two-sum/

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    List<int> answer = [];
    for (int i = 0; i < nums.length; i++) {
      for (int j = 0; j < nums.length; j++) {
        if (nums[i] + nums[j] == target && answer.length < 2) {
          answer.add(i);
          answer.add(j);
        }
      }
    }
    return answer;
  }
}

class Solution2 {
  List<int> twoSum(List<int> nums, int target) {
    List<int> answer = [];
    final Map<int, int> relayMap = {};
    nums.asMap().forEach((key, value) {
      int r = target - value;
      if (relayMap.containsKey(r)) {
        answer.add(relayMap[r]!);
        answer.add(key);
      } else {
        relayMap[value] = key;
      }
    });

    return answer;
  }
}

void main(List<String> args) {
  List<int> testList = [1, 3, 4];
  int testNum = 4;
  Solution2 test = Solution2();
  List<int> testSolution = test.twoSum(testList, testNum);

  print(testSolution);
}
