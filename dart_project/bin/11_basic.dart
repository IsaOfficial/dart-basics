import 'dart:io';

void main() {
  stdout.write('Masukkan total jumlah tagihan: ');
  var inputTotalBill = stdin.readLineSync();
  stdout.write('Masukkan jumlah orang: ');
  var inputNumberOfPeople = stdin.readLineSync();

  try {
    var totalBill = double.parse(inputTotalBill!);
    var numberOfPeople = int.parse(inputNumberOfPeople!);

    if (totalBill <= 0 || numberOfPeople <= 0) {
      print('Masukkan nilai yang valid (bukan negatif atau nol).');
      return;
    }

    var amountPerPerson = totalBill / numberOfPeople;
    print(
        'Jumlah pembagian tagihan per orang: \ ${amountPerPerson.toStringAsFixed(2)}');
  } catch (e) {
    print('Masukkan harus berupa angka.');
  }
}
