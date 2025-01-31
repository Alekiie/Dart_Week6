import 'dart:io';

void main() async {
  await switchStatement();
}

Future<void> switchStatement() async {
  print("What is your age?");
  int? age = int.parse(stdin.readLineSync()!);

  switch (age) {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
      print("Minority");
      break;
    default:
      print("Adult");
  }
}
