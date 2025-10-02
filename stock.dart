void main() {
  List<int> arr = [7, 1, 5, 3, 6, 4];

  int minPrice = 100000000000;
  int profit = 0;

  for (int i = 0; i < arr.length; i++) {
    if (arr[i] < minPrice) {
      minPrice = arr[i];
    }

    if (arr[i] - minPrice > profit) {
      profit = arr[i] - minPrice;
    }
  }
  print(profit);
}
