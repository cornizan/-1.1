import 'dart:convert';
import 'dart:io';
import 'dart:async';

List<int> transforming(String gagaga) {
  List<int> list_01 = [];
  String lml = "";
  bool mlm = true;

  for (int i = 0; i < gagaga.length; i++) {
    while (gagaga[i] != " " && mlm) {
      lml += gagaga[i];
      if (i < gagaga.length - 1) {
        i++;
      } else {
        mlm = false;
      }
    }
    list_01.add(int.parse(lml));
    lml = "";
  }
  return (list_01);
}

void main() async {
  final file = File('nums.txt');

  Stream<String> lines =
      file.openRead().transform(utf8.decoder).transform(LineSplitter());
  List<String> ai = [];
  await for (var line in lines) {
    ai.add(line);
  }
  String aip = '';
  List<int> a = transforming(ai[0]);
  print(a);
  for (int i = 0; i < a.length; i++) {
    if (a[i] % 2 == 0) {
      a.remove(a[i]);
    }
  }
  print(a);
  for (int i = 0; i < a.length; i++) {
    aip = aip + a[i].toString() + " ";
  }
  var sink = file.openWrite();

  sink.write(aip);
  sink.close();
}
