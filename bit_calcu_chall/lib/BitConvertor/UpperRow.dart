import 'package:bit_calcu_chall/TextFeildHolder.dart';
import 'package:flutter/cupertino.dart';
import 'MyPicker.dart';

class UpperRow extends StatelessWidget {
  Function firstPickerFunction;
  Function secPickerFunction;
  Function textFieldFunction;
  UpperRow(
      {this.firstPickerFunction,
      this.secPickerFunction,
      this.textFieldFunction});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(child: MyPicker(firstPickerFunction)),
          Expanded(child: TextFeildHolder(textFieldFunction)),
          Expanded(child: MyPicker(secPickerFunction)),
        ],
      ),
    );
  }
}
