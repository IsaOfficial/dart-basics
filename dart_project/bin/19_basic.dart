import 'dart:io';

void main() {
  stdout.write('Masukkan angka: ');
  var input = stdin.readLineSync();

  try {
    var number = int.parse(input!);

    if (number < 0) {
      print('Masukkan angka positif.');
      return;
    }

    var digitCount = 0;
    var tempNumber = number;

    while (tempNumber != 0) {
      digitCount++;
      tempNumber ~/= 10;
    }

    print('Jumlah digit dari $number adalah: $digitCount');
  } catch (e) {
    print('Masukkan harus berupa bilangan bulat.');
  }
}
