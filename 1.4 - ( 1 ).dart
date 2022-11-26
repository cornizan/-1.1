import 'dart:io';

void main() {
  int mlm = int.parse(stdin.readLineSync()!);
  int lml = 1;
  for (int i = 1; i <= mlm; i++) {
    if (i % 3 == 0) {
      lml *= i;
    }
  }
  print(lml);
}
