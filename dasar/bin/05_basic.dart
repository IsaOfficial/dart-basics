import 'dart:io';

void printSquare(int number) {
  for (var i = 0; i < number; i++) {
    for (var j = 0; j < number; j++) {
      stdout.write('$number ');
    }
    stdout.write('\n');
  }
}

void main() {
  stdout.write('Masukkan angka untuk membuat persegi: ');
  var input = stdin.readLineSync();
  try {
    var num = int.parse(input!);
    printSquare(num);
  } catch (e) {
    print('Masukkan harus berupa bilangan bulat.');
  }
}
