import 'dart:convert';
import 'dart:io';
import 'dart:async';

List<int> transforming(String list_01) {
  List<int> amrs = [];
  String lmrs = "";
  bool ninada = true;

  for (int i = 0; i < list_01.length; i++) {
    while (list_01[i] != " " && ninada) {
      lmrs += list_01[i];
      if (i < list_01.length - 1) {
        i++;
      } else {
        ninada = false;
      }
    }
    amrs.add(int.parse(lmrs));
    lmrs = "";
  }
  return (amrs);
}

void main() async {
  final file = File('input.txt');
  var output = File('output.txt');
  Stream<String> lines =
      file.openRead().transform(utf8.decoder).transform(LineSplitter());
  List<String> ai = [];
  await for (var line in lines) {
    ai.add(line);
  }
  List<int> listok = transforming(ai[0]);
  List<int> listochek = transforming(ai[1]);
  var sink = output.openWrite();
  for (int i = 0; i < listochek[0]; i++) {
    List<int> ticket = transforming(ai[i + 2]);
    int num = 0;
    for (int n = 0; n < listok.length; n++) {
      for (int m = 0; m < ticket.length; m++) {
        if (ticket[m] == listok[n]) {
          num++;
        }
      }
    }

    if (num >= 3) {
      sink.write('Lucky\n');
    } else
      sink.write('Unlucky\n');
  }
  sink.close();
}
