import 'package:flutter/material.dart';

main() => runApp(const PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++; 
    });

    print(perguntaSelecionada);
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
              Text(perguntas[perguntaSelecionada]),
              ElevatedButton(
                  onPressed: responder, child: const Text('Resposta 1')),
              ElevatedButton(
                  onPressed: responder, child: const Text('Resposta 2')),
              ElevatedButton(
                  onPressed: responder, child: const Text('Resposta 3'))
            ],
          )),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
