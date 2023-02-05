import 'dart:io';

//!função de leitura de dados
String inputoutput({required String message}) {
  String? input;
  while (input == null) {
    print(message);
    input = stdin.readLineSync();
  }
  return input;
}

class Materia {
  String nome;
  double teste;
  double prova;

  Materia(this.nome, this.teste, this.prova);

  void calcmedia() {
    double media = (teste + prova) / 2;
    String status = (media >= 6.0) ? "Aprovado" : "Reprovado";
    String conceito;
    if (media <= 4.9) {
      conceito = "D";
    } else if (media <= 6.9) {
      conceito = "C";
    } else if (media <= 8.9) {
      conceito = "B";
    } else {
      conceito = "A";
    }

    print("$nome:\n,"
        "teste: $teste\n,"
        "prova: $prova\n,"
        "media: $media\n,"
        "situação: $status\n,"
        " Conceito: $conceito,");
  }
}

void dadosAluno() {
  //?utilizando a função de leitura de dados
  final aluno = inputoutput(message: "nome do aluno");

  final materia = int.parse(
    inputoutput(
        message: "digite:\n"
            "1-português\n"
            "2-matematica\n"
            "3-História\n"),
  );

  switch (materia) {
    case 1:
      final teste = double.parse(inputoutput(message: "teste de português"));
      final prova = double.parse(inputoutput(message: "prova de português"));
      print("-----------------------------------------");
      Materia portugues = Materia("português", teste, prova);
      print("$aluno sua situação é:");
      portugues.calcmedia();
      break;

    case 2:
      final teste = double.parse(inputoutput(message: "teste de matematica"));
      final prova = double.parse(inputoutput(message: "prova de matematica"));
      print("-----------------------------------------");
      Materia matematica = Materia("matematica", teste, prova);
      print("$aluno sua situação é:");
      matematica.calcmedia();
      break;
    case 3:
      final teste = double.parse(inputoutput(message: "teste de historia"));
      final prova = double.parse(inputoutput(message: "prova de historia"));
      print("-----------------------------------------");
      Materia historia = Materia("historia", teste, prova);
      print("$aluno sua situação é:");
      historia.calcmedia();
      break;
  }

  //?----------------------------------------------?//

  print("--------------------------------");
}
