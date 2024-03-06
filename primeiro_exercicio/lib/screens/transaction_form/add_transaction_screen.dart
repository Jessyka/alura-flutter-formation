import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'components/transaction_form.dart';

class TransactionFormScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text('New Transaction')),
        body: TransactionForm()

    );
  }
}

