

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:primeiro_exercicio/models/transaction.dart';

class TransactionListItem extends StatelessWidget{

  final Transaction _transaction;

  TransactionListItem(this._transaction);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child:ListTile(
        leading: Icon(Icons.attach_money),
        title: Text(this._transaction.name),
        subtitle: Text(this._transaction.value.toString()),
      )
    );
  }

}