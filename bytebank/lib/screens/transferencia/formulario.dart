import 'package:bytebank/components/Editor.dart';
import 'package:bytebank/models/Transferencia.dart';
import 'package:flutter/material.dart';

class FormularioTransferencia extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormularioTransferenciaState();
  }
}

class FormularioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _controladorCampoNumeroConta =
      TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('Criando Transferencia'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Editor(
                controlador: _controladorCampoNumeroConta,
                rotulo: 'Conta',
                dica: '12345'),
            Editor(
                controlador: _controladorCampoValor,
                rotulo: 'Valor',
                dica: '0.00',
                icone: Icons.monetization_on),
            RaisedButton(
              onPressed: () => _criarTransferencia(context),
              child: Text(
                "Salvar",
                style: TextStyle(fontSize: 20.0),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _criarTransferencia(BuildContext context) {
    debugPrint('Botão confirmar clicado!');
    final double valor = double.tryParse(_controladorCampoValor.text);
    final int numeroConta = int.tryParse(_controladorCampoNumeroConta.text);

    if (valor != null && numeroConta != null) {
      final transferenciaCriada = Transferencia(valor, numeroConta);
      debugPrint('Criando Transferencia');
      debugPrint('$transferenciaCriada');
      Navigator.pop(context, transferenciaCriada);
    }
  }
}
