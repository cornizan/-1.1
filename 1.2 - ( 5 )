import 'dart:math';

Map<String, dynamic> vichislenie(Map<String, dynamic> temper) {
  for (String key in temper.keys) {
    double a = 0;
    for (int i = 0; i < 30; i++) {
      a += temper[key][i];
    }
    temper[key] = a ~/ 30;
  }

  return (temper);
}

void main() {
  Map<String, dynamic> temper = {
    'Jan': List.generate(30, (i) => -30 + Random().nextInt(-10 - -20)),
    'Feb': List.generate(30, (i) => -25 + Random().nextInt(-5 - -13)),
    'Mart': List.generate(30, (i) => -1 + Random().nextInt(8 - -1)),
    'Apr': List.generate(30, (i) => 5 + Random().nextInt(12 - -5)),
    'May': List.generate(30, (i) => 10 + Random().nextInt(18 - 10)),
    'Jun': List.generate(30, (i) => 20 + Random().nextInt(26 - 17)),
    'Jul': List.generate(30, (i) => 25 + Random().nextInt(28 - 21)),
    'Avg': List.generate(30, (i) => 20 + Random().nextInt(24 - 18)),
    'Sen': List.generate(30, (i) => 15 + Random().nextInt(15 - 12)),
    'Oct': List.generate(30, (i) => 0 + Random().nextInt(7 - 0)),
    'Nov': List.generate(30, (i) => -25 + Random().nextInt(3 - -10)),
    'Dec': List.generate(30, (i) => -30 + Random().nextInt(-11 - -19)),
  };
  print(vichislenie(temper));
}
