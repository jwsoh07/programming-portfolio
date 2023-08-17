import 'package:test/test.dart';
import '../src/algorithms/binary-search.dart';

void main() {
  group('Binary Search', () {
    group('Basic Cases', () {
      test('Element in the middle', () {
        var result = binarySearch([1, 3, 5, 7, 9, 11, 13, 15], 7);
        expect(result, equals(3));
      });
      test('Element at the beginning', () {
        var result = binarySearch([1, 3, 5, 7, 9, 11, 13, 15], 1);
        expect(result, equals(0));
      });
      test('Element at the end', () {
        var result = binarySearch([1, 3, 5, 7, 9, 11, 13, 15], 15);
        expect(result, equals(7));
      });
      test('Element not in the array', () {
        var result = binarySearch([1, 3, 5, 7, 9, 11, 13, 15], 8);
        expect(result, equals(-1));
      });
    });
    group('Edge cases', () {
      test('Empty array', () {
        var result = binarySearch([], 5);
        expect(result, equals(-1));
      });
      test('Single element array (found)', () {
        var result = binarySearch([5], 5);
        expect(result, equals(0));
      });
      test('Single element array (not found)', () {
        var result = binarySearch([5], 3);
        expect(result, equals(-1));
      });
    });
  });
}
