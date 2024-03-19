import 'dart:io';
import 'dart:math';

void main() {
  var rng = Random();
  var correctNumber = rng.nextInt(10) + 1;
  int guessedNumber = -1; // Inisialisasi dengan nilai yang tidak valid

  do {
    stdout.write('Tebak angka antara 1 dan 10: ');
    var input = stdin.readLineSync();

    try {
      guessedNumber = int.parse(input!);
      if (guessedNumber < 1 || guessedNumber > 10) {
        print('Tebakan harus berada di antara 1 dan 10.');
        continue;
      }

      if (guessedNumber == correctNumber) {
        print('Selamat, Anda menebak dengan benar!');
      } else {
        print('Tebakan Anda salah. Coba lagi.');
      }
    } catch (e) {
      print('Masukkan harus berupa angka.');
    }
  } while (guessedNumber != correctNumber);
}
