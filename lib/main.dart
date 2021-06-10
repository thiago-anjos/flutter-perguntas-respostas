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
      {
        'texto': 'Qual a sua cor favorita?',
        'respostas': ['preto', 'vermelho', 'verde', 'branco']
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'respostas': ['cachoro', 'gato', 'elefante', 'leão']
      },
      {
        'texto': 'Qual o seu cantor favorito?',
        'respostas': ['Ze Vaqueiro', 'Marilia', 'Michael', 'Amado Batista']
      }
    ];

    List<Widget> respostas = [];

    for (String textoResp
        in perguntas[_perguntaSelecionada].cast()['respostas']) {
      respostas.add(Resposta(textoResp, _responder));
    }

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          'MEU PET',
        ),
      ),
      body: Column(
        children: <Widget>[
          Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
          ...respostas,
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
