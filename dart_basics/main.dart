// ****************************************************
// Name: Abdul Rafay
// SAP ID: 54689
// Course: Mobile App Development
// Assignment # 1
// Qno. 2 - Dart Basics
// Date: 15th September 2025
// ****************************************************

import 'dart:io';

void main() {
  stdout.write("Enter your name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter your age: ");
  int age = int.parse(stdin.readLineSync()!);

  if (age < 18) {
    print("Sorry $name, you are not eligible to register.");
    return;
  }

  stdout.write("How many numbers do you want to enter? ");
  int n = int.parse(stdin.readLineSync()!);

  List<int> numbers = [];

  for (int i = 0; i < n; i++) {
    stdout.write("Enter number ${i + 1}: ");
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }

  int sumEven = 0;
  int sumOdd = 0;

  // Start by assuming the first number is both largest and smallest
  int largest = numbers[0];
  int smallest = numbers[0];

  for (int num in numbers) {
    // Even/Odd check
    if (num % 2 == 0) {
      sumEven += num;
    } else {
      sumOdd += num;
    }

    // Largest check
    if (num > largest) {
      largest = num;
    }

    // Smallest check
    if (num < smallest) {
      smallest = num;
    }
  }

  print("\n=====>>>> Results <<<<=====");
  print("All numbers entered: $numbers");
  print("Sum of even numbers: $sumEven");
  print("Sum of odd numbers: $sumOdd");
  print("Largest number: $largest");
  print("Smallest number: $smallest");
}
