import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../consList.dart';
import 'UpperRow.dart';
import '../BottomHalf.dart';
import '../MyScreen.dart';

class BitConvertor extends StatefulWidget {
  @override
  _BitConvertorState createState() => _BitConvertorState();
}

class _BitConvertorState extends State<BitConvertor> {
  String fromUnit = 'bit', toUnit = 'bit';
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
    return Scaffold(
      body: Container(
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
      ),
    );
  }
}
