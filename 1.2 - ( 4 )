import 'dart:math';

List<int> listik(List<List<int>> listochek) {
  List<int> listok = [];
  for (int i = 0; i < 12; i++) {
    int a = 0;
    for (int j = 0; j < 30; j++) {
      a += listochek[i][j];
    }
    a ~/= 30;
    listok.add(a);
  }
  return (listok);
}

void main() {
  int max = 30;
  int min = -20;

  List<List<int>> temperature = List.generate(
      12, (i) => List.generate(30, (j) => min + Random().nextInt(max - min)));  //сздание списка с темпнратурами
  List<int> listok = listik(temperature);
  print(listok);
}
