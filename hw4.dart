int totalCalls = 0;

void greet() {
  totalCalls++;
  print('Hello! Welcome to Dart programming!');
}

void introduce(String name, int age) {
  totalCalls++;
  print('My name is $name and I am $age years old.');
}

int addNumbers(int a, int b) {
  totalCalls++;
  return a + b;
}

double calculateDiscount({
  required double price,
  double discount = 0,
  double tax = 0,
}) {
  totalCalls++;
  return price - (price * discount / 100) + (price * tax / 100);
}

void main() {
  greet();
  greet();
  greet();

  introduce('Alex', 25);
  introduce('Bob', 30);
  introduce('Charlie', 22);

  int sum = addNumbers(5, 8);
  print('Sum of 5 and 8 is $sum.');

  double finalPrice1 = calculateDiscount(price: 100);
  print('Final price: \$${finalPrice1}');

  double finalPrice2 = calculateDiscount(price: 100, discount: 10);
  print('Final price: \$${finalPrice2}');

  double finalPrice3 = calculateDiscount(price: 100, discount: 10, tax: 5);
  print('Final price: \$${finalPrice3}');

  print('Total function calls: $totalCalls');
}