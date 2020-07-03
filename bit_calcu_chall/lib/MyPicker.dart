import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'consList.dart';
import 'BitConverter.dart';

class MyPicker extends StatelessWidget {
  Function onSelectItem;
  MyPicker(this.onSelectItem);
  @override
  Widget build(BuildContext context) {
    return CupertinoPicker(
      itemExtent: 30,
      // magnification: 4,
      // offAxisFraction: 0.3,
      onSelectedItemChanged: (index) {
        onSelectItem(index);
      },
      backgroundColor: Colors.white24,
      children: unitConvMemorey
          .map((e) => Text(e,
              style: TextStyle(
                fontSize: 20,
                color: Colors.pink,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center))
          .toList(),
    );
  }
}