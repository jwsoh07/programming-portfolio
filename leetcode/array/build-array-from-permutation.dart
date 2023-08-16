// https://leetcode.com/problems/build-array-from-permutation/

class Solution {
  List<int> buildArray(List<int> nums) {
    return nums
        .map((int num) => nums[num])
        .toList(); // Convert from Iterable<Int> to List<Int>
  }
}
