import 'dart:io';

void main() {
  stdout.write('Masukkan sebuah angka: ');
  var input = stdin.readLineSync();

  try {
    var number = int.parse(input!);
    print('Angka yang dimasukkan: $number');
  } catch (e) {
    print('Konversi gagal. Pastikan input adalah angka yang valid.');
  }
}
