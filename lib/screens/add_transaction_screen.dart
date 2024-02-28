import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../model.dart';
import '../textfield.dart';

class TransactionFormScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text('New Transaction')),
        body: _TransactionForm()

    );
  }
}

class _TransactionForm extends StatelessWidget {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
        children:[
          ByteBankTextField(_nameController, "Nome", "Nome"),
          ByteBankTextField(_valueController, "Valor", "Valor", keyboardType: TextInputType.number),
          TextButton(
              child: Text('Add'),
              onPressed: () {
                final name = _nameController.text;
                final value = double.tryParse(_valueController.text);

                final transaction = Transaction(name, value!);
                Navigator.pop(context, transaction);
              })
        ]
    );
  }
}
