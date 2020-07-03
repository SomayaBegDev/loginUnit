import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../consList.dart';
import '../BitConvertor/UpperRow.dart';
import '../BottomHalf.dart';
import '../MyScreen.dart';

class WeigthConvertor extends StatefulWidget {
  @override
  _WeigthConvertorState createState() => _WeigthConvertorState();
}

class _WeigthConvertorState extends State<WeigthConvertor> {
  String fromUnit = 'Ounces', toUnit = 'Ounces';
  double textFieldValue = 1.0;
  String result = "0";

  setFromUnit(int value) {
    this.fromUnit = unitConvWeight[value];
    operation();
  }

  setToUnit(int value) {
    this.toUnit = unitConvWeight[value];
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
      res = (textFieldValue * unitConvWeighthVal[toUnit]) /
          unitConvWeighthVal[fromUnit];
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
