import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../model.dart';
import 'add_transaction_screen.dart';

class TransactionListScreen extends StatelessWidget { //Basicamente existem dois tipos de widgets, Stateless e Stateful

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(title: Text('My First Flutter App')),
        body: Column(
            children: [
              _TransactionListItem(Transaction('Alex', 500.00))
              ,
              _TransactionListItem(Transaction('Daniela', 300.00))]
        )
        ,
        floatingActionButton: FloatingActionButton(child: Icon(Icons.add), onPressed: () => _pushListScreen(context),));
  }

  void _pushListScreen(BuildContext context) {
    final Future<Transaction?> result =
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return TransactionFormScreen();
    }));
    result.then(_addToList);
  }


  void _addToList(Transaction? transaction){
    debugPrint(transaction.toString());
  }
}

class _TransactionListItem extends StatelessWidget{
  final Transaction _transaction;

  _TransactionListItem(this._transaction);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
          leading: Icon(Icons.attach_money),
          title: Text(this._transaction.name),
          subtitle: Text(this._transaction.value.toString()),
        )
    );
  }

}
