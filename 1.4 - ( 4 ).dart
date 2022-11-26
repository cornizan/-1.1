import 'dart:convert';
import 'dart:io';
import 'dart:async';
 
void main() async {
  final file = File('numsTask4.txt');
  String nums_txt = "";
  Stream<String> lines = file
      .openRead()
      .transform(utf8.decoder) 
      .transform(LineSplitter());  
  try {
    await for (var line in lines) {
      nums_txt += line;
    }
  } catch (e) {
    print('Error: $e');
  }
 
  List<int> ai = [];
  String vrem = "";
 
  for (int i = 0; i < nums_txt.length; i++) {
    if (nums_txt[i] != " ") {
      vrem += nums_txt[i];
    }
    if (nums_txt[i] == " " || i + 1 == nums_txt.length) {
      ai.add(int.parse(vrem));
      vrem = "";
    }
  }
  int otvet = 0;
  for (int i = 0; i < ai.length - 1; i++) {
    if (ai[i] == ai[i + 1]) {
      int vrem = 1;
      bool vrem_0 = true;
      while (ai[i] == ai[i + 1] && vrem_0) {
        vrem++;
        if (i < ai.length-2 ) {
          i++;
        } else {
          vrem_0 = false;
        }
      }
      otvet += vrem;
    }
  }
  print(otvet);
}
