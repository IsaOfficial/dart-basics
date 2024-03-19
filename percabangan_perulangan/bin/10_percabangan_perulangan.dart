void main() {
  List<String> words = ['apel', 'pisang', 'jeruk', 'mangga', 'anggur'];

  for (var word in words) {
    print('Kata: $word, Panjang: ${word.length}');
  }
}
