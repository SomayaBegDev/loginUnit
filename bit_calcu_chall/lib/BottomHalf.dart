import 'package:flutter/cupertino.dart';

class BottomHalf extends StatelessWidget {
  @override
  String result;
  BottomHalf({this.result});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          result,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
