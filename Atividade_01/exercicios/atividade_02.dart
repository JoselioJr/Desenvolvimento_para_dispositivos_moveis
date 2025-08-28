import 'dart:io';

void main() {
  const cores = {
    "preto": 0,
    "marrom": 1,
    "vermelho": 2,
    "laranja": 3,
    "amarelo": 4,
    "verde": 5,
    "azul": 6,
    "violeta": 7,
    "cinza": 8,
    "branco": 9,
  };

  print('Digite a faixa: ');
  String? faixa = stdin.readLineSync();

  if (faixa == null || faixa.isEmpty) {
    print("Faixa inválida!");
    return;
  }

  List<String> faixas = faixa.split("-");

  String resistencia = "";

  for (var cor in faixas.take(2)) {
    if (cores.containsKey(cor)) {
      resistencia += cores[cor].toString();
    } else {
      print("Cor inválida: $cor");
      return;
    }
  }

  print("A resistência é: $resistencia");
}
