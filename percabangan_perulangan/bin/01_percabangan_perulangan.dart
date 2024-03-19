import 'dart:io';

void main() {
  stdout.write('Masukkan usia Anda: ');
  var inputAge = stdin.readLineSync();

  try {
    var age = int.parse(inputAge!);

    if (age >= 17) {
      print('Anda memenuhi syarat untuk memilih.');
    } else {
      print('Anda belum memenuhi syarat untuk memilih.');
    }
  } catch (e) {
    print('Masukkan harus berupa angka.');
  }
}
