import 'dart:io';

void main() {
  stdout.write('Masukkan sebuah angka: ');
  var input = stdin.readLineSync();

  try {
    var number = double.parse(input!);

    switch (number.sign.toInt()) {
      case -1:
        print('Angka tersebut adalah negatif.');
        break;
      case 0:
        print('Angka tersebut adalah nol.');
        break;
      case 1:
        print('Angka tersebut adalah positif.');
        break;
    }
  } catch (e) {
    print('Masukkan harus berupa angka.');
  }
}
