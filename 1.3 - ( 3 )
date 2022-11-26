import 'dart:io';
import 'dart:async';
import 'dart:convert';

List<int> transforming(String gaga) {
  List<int> a = [];
  String lml = "";
  bool mlm = true;

  for (int i = 0; i < gaga.length; i++) {
    while (gaga[i] != " " && mlm) {
      lml += gaga[i];
      if (i < gaga.length - 1) {
        i++;
      } else {
        mlm = false;
      }
    }
    a.add(int.parse(lml));
    lml = "";
  }
  return (a);
}

void main() async {
  final file = File('height.txt');

  Stream<String> lines =
      file.openRead().transform(utf8.decoder).transform(LineSplitter());
  List<String> ai = [];
  await for (var line in lines) {
    ai.add(line);
  }
  var list = transforming(ai[0]);
  int index1 = 0;
  int index2 = 0;
  int volume = 0;
  for (int i = 0; i < list.length - 1; i++) {
    for (int j = 1 + i; j < list.length; j++) {
      int visot = list[i] < list[j] ? list[i] : list[j];
      int lenght = j - i;
      if (volume < visot * lenght) {
        volume = visot * lenght;
      }
    }
  }
  print(volume);
}
