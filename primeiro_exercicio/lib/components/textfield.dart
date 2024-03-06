import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ByteBankTextField extends StatefulWidget{
  final TextEditingController _componentController;
  final String _label;
  final String _hint;
  final TextInputType keyboardType;

  ByteBankTextField(this._componentController, this._label, this._hint, { this.keyboardType = TextInputType.text });

  @override
  State<StatefulWidget> createState() {
    return _ByteBankTextFieldState();
  }

}

class _ByteBankTextFieldState extends State<ByteBankTextField> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: widget._componentController,
        keyboardType: widget.keyboardType,
        style: const TextStyle(fontSize: 24),
        decoration: InputDecoration(
          labelText: widget._label,
          hintText: widget._hint,
        ),
      ),
    );
  }

}