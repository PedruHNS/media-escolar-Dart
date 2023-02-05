import 'dart:io';
import 'package:mediaescolar/funcao.dart';
void main() {
  String? contador;

  while (contador != "sim") {
    dadosAluno();
    print("deseja sair?");
    contador = stdin.readLineSync();
    
  }
}

