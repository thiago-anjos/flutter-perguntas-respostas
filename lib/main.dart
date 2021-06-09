import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

void main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print('pergunta respondida $_perguntaSelecionada');
  }

  var _perguntaSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual a sua cor favorita?',
      'Qual é o seu animal favorito?'
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          'MEU PET',
        ),
      ),
      body: Column(
        children: <Widget>[
          Questao(perguntas[_perguntaSelecionada]),
          Resposta('Resposta 1', _responder),
          Resposta('Resposta 2', _responder),
          Resposta('Resposta 3', _responder),
        ],
      ),
    ));
  }
}

class PerguntaApp extends StatefulWidget {
  State<PerguntaApp> createState() {
    return _PerguntaAppState();
  }
}
