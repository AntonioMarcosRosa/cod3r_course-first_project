import 'package:curso_flutter_projeto_1/resposta.dart';
import 'package:flutter/material.dart';
import './questao.dart';

main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });

    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual a sua cor favorita?',
      'Qual o seu animal favorito?'
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('Perguntas')),
          body: Column(
            children: <Widget>[
              Questao(perguntas[_perguntaSelecionada]),
              const Resposta('Resposta 1'),
              const Resposta('Resposta 2'),
              const Resposta('Resposta 3')
            ],
          )),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
