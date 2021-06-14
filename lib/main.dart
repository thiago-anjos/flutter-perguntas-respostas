import 'package:flutter/material.dart';
import 'package:projeto_perguntas/resultado.dart';
import './questionario.dart';
import './resultado.dart';

void main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final _perguntas = [
    {
      'texto': 'Qual a sua cor favorita?',
      'respostas': [
        {'texto': 'preto', 'pontuacao': 10},
        {'texto': 'vermelho', 'pontuacao': 8},
        {'texto': 'verde', 'pontuacao': 1},
        {'texto': 'branco', 'pontuacao': 3},
      ]
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto': 'Gato', 'pontuacao': 7},
        {'texto': 'Cachorro', 'pontuacao': 2},
        {'texto': 'Elefante', 'pontuacao': 3},
        {'texto': 'Coelho', 'pontuacao': 7},
      ]
    },
    {
      'texto': 'Qual o seu cantor favorito?',
      'respostas': [
        {'texto': 'Michael J', 'pontuacao': 8},
        {'texto': 'Amado B', 'pontuacao': 6},
        {'texto': 'Zé V', 'pontuacao': 5},
        {'texto': 'Marilia M', 'pontuacao': 13},
      ]
    }
  ];

  void _responder(int pontuacao) {
    setState(() {
      _perguntaSelecionada++;
      _pontuacaoTotal += pontuacao;
    });
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                'MEU PET',
              ),
            ),
            body: temPerguntaSelecionada
                ? Questionario(
                    perguntaSelecionada: _perguntaSelecionada,
                    perguntas: _perguntas,
                    responder: _responder)
                : Resultado(_pontuacaoTotal, _reiniciarQuestionario)));
  }
}

class PerguntaApp extends StatefulWidget {
  State<PerguntaApp> createState() {
    return _PerguntaAppState();
  }
}
