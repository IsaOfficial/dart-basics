import 'dart:io';

void main() {
  stdout.write('Masukkan bilangan pertama: ');
  var input1 = stdin.readLineSync();
  stdout.write('Masukkan bilangan kedua: ');
  var input2 = stdin.readLineSync();

  try {
    var number1 = int.parse(input1!);
    var number2 = int.parse(input2!);

    print('Sebelum pertukaran:');
    print('Bilangan pertama: $number1');
    print('Bilangan kedua: $number2');

    var temp = number1;
    number1 = number2;
    number2 = temp;

    print('Setelah pertukaran:');
    print('Bilangan pertama: $number1');
    print('Bilangan kedua: $number2');
  } catch (e) {
    print('Masukkan harus berupa bilangan bulat.');
  }
}
