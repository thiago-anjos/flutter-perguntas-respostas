import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacaoFinal;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontuacaoFinal, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacaoFinal < 8) {
      return 'Parabéns';
    } else if (pontuacaoFinal < 12) {
      return 'Você é bom';
    } else if (pontuacaoFinal < 16) {
      return 'Impressionante';
    } else {
      return 'Nível Jedi';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
          onPressed: quandoReiniciarQuestionario,
          child: Text(
            'Reiniciar',
            style: TextStyle(fontSize: 16),
          ),
        )
      ],
    );
  }
}
