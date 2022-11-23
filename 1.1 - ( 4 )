import 'dart:io';
import 'dart:math';

List<int> listik(int minima, int maxima) {
  List<int> listochek = List.generate(10,(index) => (Random().nextInt(maxima - minima) + minima)); //создание списка

  return (listochek);
}

void main() {
  print("введите минимальный порог - ");
  int minima = int.parse(stdin.readLineSync()!); //min
  print("введите максимальный порог - ");
  int maxima = int.parse(stdin.readLineSync()!); //max

  List listochek = listik(minima, maxima);

  for (int i = 0; i < listochek.length; i++) {
    stdout.write("${listochek[i]} ");
  }
}
