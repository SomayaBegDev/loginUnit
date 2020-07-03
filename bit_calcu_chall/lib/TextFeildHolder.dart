import 'package:flutter/material.dart';

class TextFeildHolder extends StatelessWidget {
  Function onChangeTextField;
  TextFeildHolder(this.onChangeTextField);
  @override
  Widget build(BuildContext context) {
    return TextField(
        keyboardType: TextInputType.number,
        onChanged: (val) {
          onChangeTextField(val);
        },
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center);
  }
}
