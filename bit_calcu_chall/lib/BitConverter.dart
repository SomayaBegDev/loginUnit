import 'package:flutter/material.dart';
import 'consList.dart';
import 'UpperRow.dart';
import 'BottomHalf.dart';

class BitConverter extends StatefulWidget {
  @override
  _BitConverterState createState() => _BitConverterState();
}

class _BitConverterState extends State<BitConverter> {
  String fromUnit = 'bit';
  String toUnit = 'bit';
  double textFieldValue = 1.0;
  String result = "0";

  setFromUnit(int value) {
    this.fromUnit = unitConvMemorey[value];
    operation();
  }

  setToUnit(int value) {
    this.toUnit = unitConvMemorey[value];
    operation();
  }

  setTextFieldV(String value) {
    this.textFieldValue = double.parse(value);
    operation();
  }

  operation() {
    double res = 0.0;

    if (fromUnit == toUnit) {
      res = textFieldValue;
    } else {
      res = (textFieldValue * unitConvMemoreyVal[toUnit]) /
          unitConvMemoreyVal[fromUnit];
    }

    result = res.toString();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: UpperRow(
              firstPickerFunction: setFromUnit,
              textFieldFunction: setTextFieldV,
              secPickerFunction: setToUnit,
            ),
          ),
          Expanded(
            child: BottomHalf(result: result),
          )
        ],
      ),
    );
  }
}
