void main() {
  List<int> arr = [7, 1, 5, 3, 6, 4];

  int minPrice = 12399999278384748;
  int profit = 0;
  int day = 0;
  while (day < arr.length) {
    if (arr[day] < minPrice) {
      minPrice = arr[day];
    }

    if (arr[day] > minPrice) {
    
      profit += arr[day] - minPrice;
      minPrice = arr[day];
    }

    day += 1;
  }
  print(profit);
}
