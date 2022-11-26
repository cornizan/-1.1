import 'dart:io';

void main() {
  String txt = stdin.readLineSync()!;
  int dba = 1;    //число слов
  bool a = false;
  for (int i = 0; i < txt.length; i++) {    //перебор списка
    if (txt[i] != " ") {    //перебор на поиск пробелов
      a = true;
    } else if (txt[i] == " " && a) {
      dba++;
    }
  }

  if (a) {
    txt = "start $txt end";
    print(dba);
    print(txt);
  }
}
