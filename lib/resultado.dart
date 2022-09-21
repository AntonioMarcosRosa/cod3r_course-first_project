import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final String texto;
  final int pontuacao;
  final void Function() reiniciarQuestionario;

  const Resultado(this.texto, this.pontuacao, this.reiniciarQuestionario,
      {super.key});

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!\n Sua pontuação foi:\n $pontuacao pontos';
    } else if (pontuacao < 12) {
      return 'Nossa você é bom!\n Sua pontuação foi:\n $pontuacao pontos';
    } else if (pontuacao < 16) {
      return 'WOOOWWW!\n Sua pontuação foi:\n $pontuacao pontos';
    } else {
      return 'UMA LENDAAAA!\n Sua pontuação foi:\n $pontuacao pontos';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            fraseResultado,
            style: const TextStyle(
              fontSize: 28,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          margin: const EdgeInsets.all(8),
          child: TextButton(
            onPressed: reiniciarQuestionario,
            child: const Text(
              'Reiniciar',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        )
      ],
    );
  }
}
