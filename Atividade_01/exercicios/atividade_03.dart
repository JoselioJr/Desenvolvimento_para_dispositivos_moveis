import 'dart:io';

void main () {
  print('Digite o número do cartão: ');

  String? numeroCartao = stdin.readLineSync();

  if (numeroCartao == null || numeroCartao.isEmpty) {
    print("Número do cartão inválido.");
    return;
  }

  if (!RegExp(r'^[0-9 ]+$').hasMatch(numeroCartao)) {
    print("Número de cartão inválido!");
    return;
  }

  String novoNumeroCartao = numeroCartao.replaceAll(' ', '');
  List<int> digitos = novoNumeroCartao.split('').map(int.parse).toList();

  for (int i = digitos.length - 2; i >= 0; i -= 2) {
    int novoValor = digitos[i] * 2;
    if (novoValor > 9) {
      novoValor -= 9;
    }
    digitos[i] = novoValor;
  }

  int soma = digitos.reduce((a, b) => a + b);

  if (soma % 10 == 0) {
    print("Número de cartão válido!");
  } else {
    print("Número de cartão inválido!");
  }
}