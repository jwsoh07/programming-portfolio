// https://leetcode.com/problems/number-of-employees-who-met-the-target/

class Solutio2798 {
  int numberOfEmployeesWhoMetTarget(List<int> hours, int target) {
    // init total employees who worked at least x hours
    var count = 0;
    // iterate through array and add 1 to the total count if any element of array is greater than x
    hours.fold(count, (previousValue, element) {
      if (element >= target) {
        return count += 1;
      }
      return count;
    });
    // return total employee count
    return count;
  }
}
