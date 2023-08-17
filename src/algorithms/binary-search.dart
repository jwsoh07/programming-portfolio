int binarySearch(List<int> arr, int target) {
  var left = 0;
  var right = arr.length - 1;

  while (left <= right) {
    final mid = (left + right) ~/ 2;

    if (arr[mid] == target) {
      return mid;
    } else if (arr[mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }

  return -1; // Element not found
}

void main(List<String> args) {
  print(binarySearch([0, 1, 2, 4, 6, 8], 8));
}
