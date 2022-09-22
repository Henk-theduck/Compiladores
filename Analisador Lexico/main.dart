import 'dart:io';
import 'scanner_a.dart' as scannerA;
import 'scanner_b.dart' as scannerB;

String? inputContent() => stdin.readLineSync();

void main(List<String> args) {
  bool looping = true;
  String? content;

  while (looping) {
    print('===============| Scanners|===============');
    print('1 - (a|b)*bab com alfabeto (a,b)');
    print('2 - (a|b)*baab com alfabeto (a,b)');
    print('0 - Sair');
    int? n = int.parse(stdin.readLineSync()!);
    switch (n) {
      case 1:
        print('digite a cadeia');
        content = inputContent() as String;
        print('============================================');
        print('cadeia $content: ${scannerA.scannerA(content)}');
        print('============================================\n');
        break;
      case 2:
        print('digite a cadeia');
        content = inputContent() as String;
        print('============================================');
        print('cadeia $content: ${scannerB.scannerB(content)}');
        print('============================================\n');
        break;
      case 0:
        looping = false;
        break;
    }
  }
}
