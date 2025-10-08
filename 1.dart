void main() {
  List<int> arr = [10, 11, 12, 11, 10];

  Map<int, int> seen = {};

  for (int i = 0; i < arr.length; i++) {
    if (seen.containsKey(arr[i])) {
      print(arr[i]);
      break;
    } else {
      seen[arr[i]] = 1;
    }
  }
}
