import 'dart:io';
import 'dart:math';

void main() {
  double srednee = 0;
  double summa = 0;
  int multipl = 1;
  int len = 0;
  bool c = true;
  List<int> listik = [];

  while (c) {
    int chisla = int.parse(stdin.readLineSync()!); //ввод элементов

    if (chisla != 0) {
      listik.add(chisla);  //добавление элементов в список
    }

    if (chisla == 0) {
      c = false;
    } else {
      len++;               //считаем кол-во элементов в списке
      summa += chisla;     //вычесляем сумму всех элементов
      multipl *= chisla;   //вычисляем произведение
    }
  }
  srednee = (summa / len); //вычисляем сред.арифметическое

  print('\n\n$listik\n\n');
  print('Сумма = $summa');
  print('Произведение = $multipl');
  print('Среднее= $srednee\n\n');
}
