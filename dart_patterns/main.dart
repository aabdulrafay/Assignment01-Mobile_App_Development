// ****************************************************
// Name: Abdul Rafay
// SAP ID: 54689
// Course: Mobile App Development
// Assignment # 1
// Qno. 2 - Dart Pattern
// Date: 15th September 2025
// ****************************************************

import 'dart:io';

void main() {

  stdout.write("Enter the value of n: ");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("$j ");
    }
    print("");
  }
}
