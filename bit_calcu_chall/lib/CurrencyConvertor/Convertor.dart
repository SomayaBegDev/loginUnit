import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../consList.dart';
import '../BitConvertor/UpperRow.dart';
import '../BottomHalf.dart';

class CurrencyConvertor extends StatefulWidget {
  @override
  _CurrencyConvertorState createState() => _CurrencyConvertorState();
}

class _CurrencyConvertorState extends State<CurrencyConvertor> {
  String fromUnit = 'NIS', toUnit = 'NIS';
  double textFieldValue = 1.0;
  String result = "0";

  setFromUnit(int value) {
    this.fromUnit = unitConvCurrency[value];
    operation();
  }

  setToUnit(int value) {
    this.toUnit = unitConvCurrency[value];
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
      res = (textFieldValue * unitConvCurrencyVal[toUnit]) /
          unitConvCurrencyVal[fromUnit];
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
