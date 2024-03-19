import 'dart:io';

void main() {
  stdout.write('Masukkan angka untuk menghitung faktorial: ');
  var input = stdin.readLineSync();

  try {
    var number = int.parse(input!);

    if (number < 0) {
      print('Masukkan angka non-negatif.');
      return;
    }

    var factorial = 1;
    var i = 1;
    while (i <= number) {
      factorial *= i;
      i++;
    }

    print('Faktorial dari $number adalah: $factorial');
  } catch (e) {
    print('Masukkan harus berupa bilangan bulat.');
  }
}
