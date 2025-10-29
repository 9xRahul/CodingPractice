void main() {
  int n = 123;

  int temp = n;

  int? reverse = 0;

  while (temp > 0) {
    int digit = temp % 10;
    reverse = reverse! * 10 + digit;
    temp = temp ~/ 10;
  }
  print(reverse);
}
