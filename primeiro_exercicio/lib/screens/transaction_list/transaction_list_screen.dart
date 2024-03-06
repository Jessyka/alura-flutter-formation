import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:primeiro_exercicio/screens/transaction_form/add_transaction_screen.dart';
import '../../models/transaction.dart';
import 'components/transaction_list.dart';

class TransactionListScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TransactionListScreen();
  } //Basicamente existem dois tipos de widgets, Stateless e Stateful


}

class _TransactionListScreen extends State<TransactionListScreen> {

  final transactions = <Transaction>[];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    debugPrint("building the state");
    return Scaffold(
      appBar: AppBar(
        title: Text("Transactions"),
      ),
      body: TransactionList(transactions),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _pushListScreen(context),
      ),
    );
  }

  void _pushListScreen(BuildContext context) {
    final Future<Transaction> result = Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return TransactionFormScreen();
        },
      ),
    ) as Future<Transaction>;
    result.then(_addToTheList);
  }

  void _addToTheList(Transaction value) {
    if(value == null) {
      return;
    }
    debugPrint(value.toString());
    debugPrint("about to add something to the transaction");
    setState(() {
      debugPrint("set state begin");
      transactions.add(value);
      debugPrint("setState after ${transactions.toString()}");
    });
    debugPrint("addToTheList after ${transactions.toString()}");
  }

}

