import 'dart:io';
import 'dart:math';

void main() {
  var rng = Random();
  var correctNumber = rng.nextInt(100) + 1;
  int guessedNumber = -1; // Inisialisasi dengan nilai yang tidak valid

  print('Selamat datang dalam permainan menebak!');
  print('Tebak angka antara 1 dan 100.');

  do {
    stdout.write('Masukkan tebakan Anda: ');
    var input = stdin.readLineSync();

    try {
      guessedNumber = int.parse(input!);
      if (guessedNumber < 1 || guessedNumber > 100) {
        print('Tebakan harus berada di antara 1 dan 100.');
        continue;
      }

      if (guessedNumber < correctNumber) {
        print('Tebakan terlalu rendah. Coba lagi.');
      } else if (guessedNumber > correctNumber) {
        print('Tebakan terlalu tinggi. Coba lagi.');
      } else {
        print('Selamat, Anda menebak dengan benar!');
      }
    } catch (e) {
      print('Masukkan harus berupa angka.');
    }
  } while (guessedNumber != correctNumber);
}
