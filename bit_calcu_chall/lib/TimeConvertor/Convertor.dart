import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../consList.dart';
import '../BitConvertor/UpperRow.dart';
import '../BottomHalf.dart';
import '../MyScreen.dart';

class TimeConvertor extends StatefulWidget {
  @override
  _TimeConvertorState createState() => _TimeConvertorState();
}

class _TimeConvertorState extends State<TimeConvertor> {
  String fromUnit = 'millisecond', toUnit = 'millisecond';
  double textFieldValue = 1.0;
  String result = "0";

  setFromUnit(int value) {
    this.fromUnit = unitConvTime[value];
    operation();
  }

  setToUnit(int value) {
    this.toUnit = unitConvTime[value];
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
      res = (textFieldValue * unitConvTimeVal[toUnit]) /
          unitConvTimeVal[fromUnit];
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
