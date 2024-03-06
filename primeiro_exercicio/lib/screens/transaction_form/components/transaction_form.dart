

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:primeiro_exercicio/components/textfield.dart';
import 'package:primeiro_exercicio/models/transaction.dart';

class TransactionForm extends StatelessWidget{
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Column(children: [
        ByteBankTextField(_nameController, "Name", "name", keyboardType: TextInputType.text),
        ByteBankTextField(_amountController, "Valor", "0.00", keyboardType: TextInputType.number),
        TextButton(
            child: Text('Add'),
          onPressed: () => _popTransaction(context))
      ],)
    );
  }

  _popTransaction(BuildContext context) {
    final name = _nameController.text;
    final amount = double.tryParse(_amountController.text);
    if (name == null || amount == null) {
      return;
    }

    final transaction = Transaction(name, amount);
//          debugPrint("$transaction");
    Navigator.pop(context, transaction);
  }
}

