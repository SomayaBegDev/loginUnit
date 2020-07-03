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
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 20),
    );
  }
}
