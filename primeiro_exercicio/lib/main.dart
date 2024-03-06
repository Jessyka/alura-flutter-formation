import 'package:flutter/material.dart';
import 'package:primeiro_exercicio/screens/transaction_list/transaction_list_screen.dart';
import 'package:primeiro_exercicio/components/textfield.dart';

void _incrementCounter() {}

void main() {
  runApp(ByteBankApp());
}

class ByteBankApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: TransactionListScreen(),
    );
  }
}