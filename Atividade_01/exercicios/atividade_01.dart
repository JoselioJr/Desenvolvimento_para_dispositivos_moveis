import 'dart:io';

void main() {
  const letras1 = ['a', 'e', 'i', 'o', 'u', 'l', 'n', 'r', 's', 't'];
  const letras2 = ['d', 'g'];
  const letras3 = ['b', 'c', 'm', 'p'];
  const letras4 = ['f', 'h', 'v', 'w', 'y'];
  const letras5 = ['k'];
  const letras8 = ['j', 'x'];
  const letras10 = ['q', 'z'];

  print('Digite uma palavra: ');
  String? palavra = stdin.readLineSync();

  if (palavra == null || palavra.isEmpty) {
    print("Palavra inválida.");
    return;
  }

  int pontuacao = 0;

  for (var letra in palavra.split('')) {
    if (letras1.contains(letra)) {
      pontuacao += 1;
    } else if (letras2.contains(letra)) {
      pontuacao += 2;
    } else if (letras3.contains(letra)) {
      pontuacao += 3;
    } else if (letras4.contains(letra)) {
      pontuacao += 4;
    } else if (letras5.contains(letra)) {
      pontuacao += 5;
    } else if (letras8.contains(letra)) {
      pontuacao += 8;
    } else if (letras10.contains(letra)) {
      pontuacao += 10;
    }
  }

  print('A pontuação é: $pontuacao');
}
