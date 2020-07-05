import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'consList.dart';
import 'MyScreen.dart';

class MyPicker extends StatelessWidget {
  int getSeelected = MyScreen.selectedItem;
  Function onSelectItem;
  MyPicker(this.onSelectItem);

  @override
  Widget build(BuildContext context) {
    return CupertinoPicker(
        itemExtent: 30,
        onSelectedItemChanged: (index) {
          onSelectItem(index);
        },
        backgroundColor: Colors.white24,
        children: unitsNav[getSeelected].keys.map((x) => Text(x)).toList());
  }
}
