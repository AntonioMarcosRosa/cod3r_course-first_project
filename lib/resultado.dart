import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final String texto;
  final int pontuacao;

  const Resultado(this.texto, this.pontuacao, {super.key});

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!\n Sua pontuação foi: $pontuacao pontos';
    } else if (pontuacao < 12) {
      return 'Nossa você é bom!\n Sua pontuação foi: $pontuacao pontos';
    } else if (pontuacao < 16) {
      return 'WOOOWwww!\n Sua pontuação foi: $pontuacao pontos';
    } else {
      return 'UMA LENDAAAA!\n Sua pontuação foi: $pontuacao pontos';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        fraseResultado,
        style: const TextStyle(
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
