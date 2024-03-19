import 'dart:io';

void main() {
  stdout.write('Masukkan tahun: ');
  var input = stdin.readLineSync();

  try {
    var year = int.parse(input!);

    if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) {
      print('$year adalah tahun kabisat.');
    } else {
      print('$year bukan tahun kabisat.');
    }
  } catch (e) {
    print('Masukkan harus berupa angka.');
  }
}
