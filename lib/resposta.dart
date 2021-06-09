import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final VoidCallback _responder;
  Resposta(this.texto, this._responder);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _responder,
      child: Text(texto),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.black),
          padding: MaterialStateProperty.all(EdgeInsets.all(5)),
          textStyle: MaterialStateProperty.all(TextStyle(fontSize: 16))),
    );
  }
}
