import 'dart:io';

void main() {
  stdout.write('Masukkan hari dalam seminggu: ');
  var day = stdin.readLineSync();

  switch (day) {
    case 'senin':
    case 'selasa':
    case 'rabu':
    case 'kamis':
    case 'jumat':
      print('$day adalah hari kerja.');
      break;
    case 'sabtu':
    case 'minggu':
      print('$day adalah akhir pekan.');
      break;
    default:
      print('Masukkan tidak valid.');
  }
}
