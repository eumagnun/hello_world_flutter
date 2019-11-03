import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final TextEditingController controlador;
  final String rotulo;
  final String dica;
  final IconData icone;

  Editor({
    this.controlador,
    this.rotulo,
    this.dica,
    this.icone,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 10.0),
      child: TextField(
        controller: controlador,
        style: TextStyle(
          fontSize: 24.0,
        ),
        obscureText: false,
        decoration: InputDecoration(
          icon: icone != null ? Icon(icone) : null,
          hintText: dica,
          labelText: rotulo,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
