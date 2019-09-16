import 'package:flutter/material.dart';

class CriarConta extends StatefulWidget {
  String nome;
  CriarConta({this.nome});

  @override
  _CriarContaState createState() => _CriarContaState();
}

class _CriarContaState extends State<CriarConta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nome: " + widget.nome),
      ),
    );
  }
}
