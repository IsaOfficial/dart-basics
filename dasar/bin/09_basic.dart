import 'dart:io';

void main() {
  stdout.write('Masukkan string: ');
  var input = stdin.readLineSync();

  if (input != null) {
    var stringWithoutSpaces = input.replaceAll(' ', '');
    print('String setelah menghapus spasi: $stringWithoutSpaces');
  } else {
    print('Masukkan tidak boleh kosong.');
  }
}
