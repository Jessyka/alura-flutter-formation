import 'package:flutter/material.dart';
import 'package:byte_bank_app/screens/transaction_list_screen.dart';

void main() {
  runApp(ByteBankApp());
}

class ByteBankApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: TransactionListScreen());
  }
}
