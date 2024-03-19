import 'dart:io';

void main() {
  print("Masukkan nama depan:");
  String? a = stdin.readLineSync();
  print("Masukkan nama belakang:");
  String? b = stdin.readLineSync();
  print("Maka nama lengkapnya adalah: ${a} ${b}");
}
