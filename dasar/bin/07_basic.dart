import 'dart:io';

void main() {
  stdout.write('Masukkan bilangan pertama: ');
  var input1 = stdin.readLineSync();
  stdout.write('Masukkan bilangan kedua: ');
  var input2 = stdin.readLineSync();

  try {
    var number1 = int.parse(input1!);
    var number2 = int.parse(input2!);

    var quotient = number1 ~/ number2;
    var remainder = number1 % number2;

    print('Hasil bagi: $quotient');
    print('Sisa pembagian: $remainder');
  } catch (e) {
    print('Masukkan harus berupa bilangan bulat.');
  }
}
