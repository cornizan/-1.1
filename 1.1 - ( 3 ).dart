import 'dart:io';

void main() {
  List<String> listik = [];

  bool a = true;

  while (a) {
   
    String b = stdin.readLineSync()!;       //цикл завершающий выполнение кода
    if (b != " " && b != "") {
      listik.add(b);                        //добавление элем. не являющихся null в список
    } else {
      a = false;
    }
  }

  int max = int.parse(listik[0]);
  int max_dlin = listik[0].length;

  int min = int.parse(listik[0]);
  int min_dlin = listik[0].length;

  for (int i = 0; i < listik.length; i++) {
    if (max_dlin < listik[i].length) {      //цикл перебирающий список
      max = int.parse(listik[i]);
      max_dlin = listik[i].length;
    } else if (min_dlin > listik[i].length) {
      min = int.parse(listik[i]);
      min_dlin = listik[i].length;
    }
  }
  print('минимальная длина - $min');
  print('максимальная длина - $max');
}
