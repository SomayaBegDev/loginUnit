import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'consList.dart';
import 'UpperRow.dart';
import 'BottomHalf.dart';
import 'MyScreen.dart';

class Convertor extends StatefulWidget {
  @override
  _ConvertorState createState() => _ConvertorState();
}

class _ConvertorState extends State<Convertor> {
  static int getSeelected = MyScreen.selectedItem;

  static List giveSelectedList =
      unitsNav[getSeelected].keys.map((x) => x).toList();

  static Map<String, dynamic> giveSelectedMap = unitsNav[getSeelected];

  String fromUnit = giveSelectedList[0], toUnit = giveSelectedList[0];
  double textFieldValue = 1.0;
  String result = "0";

  setFromUnit(int value) {
    this.fromUnit = giveSelectedList[value];
    operation();
  }

  setToUnit(int value) {
    this.toUnit = giveSelectedList[value];
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
      res = (textFieldValue * giveSelectedMap[toUnit]) /
          giveSelectedMap[fromUnit];
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
            ),
          ],
        ),
      ),
    );
  }
}
