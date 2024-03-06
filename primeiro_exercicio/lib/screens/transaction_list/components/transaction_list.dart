

import 'package:flutter/cupertino.dart';
import 'package:primeiro_exercicio/models/transaction.dart';
import 'package:primeiro_exercicio/screens/transaction_list/components/transaction_list_item.dart';

class TransactionList extends StatelessWidget{
  final List<Transaction> _transactions;

  TransactionList(this._transactions);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: _transactions.length,
        itemBuilder: (BuildContext context, int index) {
          return TransactionListItem(_transactions[index]);
      });
  }


}