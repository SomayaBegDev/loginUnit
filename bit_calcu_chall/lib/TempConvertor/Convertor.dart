import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../consList.dart';
import '../BitConvertor/UpperRow.dart';
import '../BottomHalf.dart';
import '../MyScreen.dart';

class TempConvertor extends StatefulWidget {
  @override
  _TempConvertorState createState() => _TempConvertorState();
}

class _TempConvertorState extends State<TempConvertor> {
  String fromUnit = 'Celsius', toUnit = 'Celsius';
  double textFieldValue = 1.0;
  String result = "0";

  setFromUnit(int value) {
    this.fromUnit = unitConvTemp[value];
    operation();
  }

  setToUnit(int value) {
    this.toUnit = unitConvTemp[value];
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
      res = (textFieldValue * unitConvTempVal[toUnit]) /
          unitConvTempVal[fromUnit];
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
