import 'dart:io';

void main() {
  int nujno = int.parse(stdin.readLineSync()!); //размер
  List<List<int>> list =
      List.generate(nujno, (i) => List.generate(nujno, (j) => 1));

  for (int i = 1; i < nujno; i++) {
    for (int j = 1; j < nujno; j++) {
      list[i][j] = list[i - 1][j] + list[i][j - 1];
    }
  }

  for (int i = 0; i < nujno; i++) {
    for (int j = 0; j < nujno; j++) {
      if (list[i][j].toString().length == 1) {
        stdout.write(" ${list[i][j]}  ");
      } else {
        stdout.write("${list[i][j]}  ");
      }
    }
    print("");
  }
}
