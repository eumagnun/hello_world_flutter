import 'package:bytebank/screens/transferencia/lista.dart';
import 'package:flutter/material.dart';

void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.green[900],
          accentColor: Colors.blue[900],
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.blue[900],
            textTheme: ButtonTextTheme.primary,
          ),
        ),
        home: ListaTransferencia());
  }
}
