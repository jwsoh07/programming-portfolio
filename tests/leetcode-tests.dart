import 'package:test/test.dart';
import '../src/leetcode/array/build-array-from-permutation.dart';
import '../src/leetcode/array/number-of-employees-who-met-the-target.dart';

void main() {
  group('Build Array From Permutation', () {
    test('Case 1', () {
      var result = Solution().buildArray([0, 2, 1, 5, 3, 4]);
      expect(result, equals([0, 1, 2, 4, 5, 3]));
    });

    test('Case 2', () {
      var result = Solution().buildArray([5, 0, 1, 2, 3, 4]);
      expect(result, equals([4, 5, 0, 1, 2, 3]));
    });
  });

  group('Number of Employees Who Met the Target', () {
    test('Case 1', () {
      var result =
          Solution2798().numberOfEmployeesWhoMetTarget([0, 1, 2, 3, 4], 2);
      expect(result, equals(3));
    });
    test('Case 2', () {
      var result =
          Solution2798().numberOfEmployeesWhoMetTarget([5, 1, 4, 2, 2], 6);
      expect(result, equals(0));
    });
    test('Case 3', () {
      var result = Solution2798().numberOfEmployeesWhoMetTarget([], 10);
      expect(result, equals(0));
    });
  });
}
