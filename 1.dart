void main() {
  List<int> arr = [10, 10, 11, 12, 10, 10];
  List<int> arr2 = [10, 11, 12, 13];

  bool isSublist = false;

  for (int i = 0; i <= arr2.length; i++) {
    bool match = true;
    for (int j = 0; j < arr2.length; j++) {
      print("${i + j}  $j");
      if (arr[i + j] != arr2[j]) {
        match = false;
        print(" not matched${i + j}  $j");
        break;
      }
    }
    if (match) {
      isSublist = true;
      break;
    }
  }

  if (isSublist) {
    print("Sublist");
  } else {
    print("Not a Sublist");
  }
}
