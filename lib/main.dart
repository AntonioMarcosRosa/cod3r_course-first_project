import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qua a sua cor favorita?',
      'Qual o seu animal favorito?'
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('Perguntas')),
          body: Column(
            children: <Widget>[
              Text(perguntas[0]),
              const ElevatedButton(
                onPressed: null,
                child: Text('Resposta 1')
              ),
              const ElevatedButton(
                onPressed: null,
                child: Text('Resposta 2')
              ),
              const ElevatedButton(
                onPressed: null,
                child: Text('Resposta 3')
              )
            ],
          )),
    );
  }
}
