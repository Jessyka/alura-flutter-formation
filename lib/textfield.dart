import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ByteBankTextField extends StatelessWidget{
  final TextEditingController _componentController;
  final String _label;
  final String _hint;
  final TextInputType keyboardType;

  ByteBankTextField(this._componentController, this._label, this._hint, { this.keyboardType = TextInputType.text });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: _componentController,
          style: TextStyle(fontSize: 24),
          decoration: InputDecoration(
              labelText: _label,
              hintText: _hint
          ),
          keyboardType: keyboardType,
        ));
  }
}