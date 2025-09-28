void main() {
  List<int> arr = [8, 6, 6, 9, 5, 9, 2, 4, 6, 4];

  Map<int, int> count = {};

  for (int i = 0; i < arr.length; i++) {
    count[arr[i]] = (count[arr[i]] ?? 0) + 1;
  }

  List<int> key = [];
  List<int> value = [];
  for (var entry in count.entries) {
    key.add(entry.key);
    value.add(entry.value);
  }

  for (int i = 0; i < value.length; i++) {
    for (int j = i + 1; j < value.length; j++) {
      if (value[i] < value[j]) {
        int tempVal = value[i];
        value[i] = value[j];
        value[j] = tempVal;

        int temp = key[i];
        key[i] = key[j];
        key[j] = temp;
      }
    }
  }

  print(key);
}
