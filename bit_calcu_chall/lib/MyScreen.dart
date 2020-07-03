import 'package:flutter/material.dart';
import 'BitConvertor/Convertor.dart';
import 'CurrencyConvertor/Convertor.dart';
import 'LengthConvertor/Convertor.dart';
import 'TempConvertor/Convertor.dart';
import 'WeightConvertor/Convertor.dart';
import 'TimeConvertor/Convertor.dart';

import 'consList.dart';

class MyScreen extends StatefulWidget {
  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  int selectedItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Units Convertor"),
      ),
      body: GestureDetector(
        child: GridView.builder(
            itemCount: unitsName.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 500,
                crossAxisSpacing: 50,
                childAspectRatio: 2),
            itemBuilder: (context, index) {
              selectedItem = index;
              return Center(child: Text(unitsName[index]));
            }),
        onTap: () {
          switch (selectedItem) {
            case 0:
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return BitConvertor();
                  }),
                );
              }
              break;
            case 1:
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return LengthConvertor();
                  }),
                );
              }
              break;
            case 2:
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return WeigthConvertor();
                  }),
                );
              }
              break;
            case 3:
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return TimeConvertor();
                  }),
                );
              }
              break;
            case 4:
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return CurrencyConvertor();
                  }),
                );
              }
              break;
            case 5:
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return TempConvertor();
                  }),
                );
              }
              break;
          }
          setState(() {});
        },
      ),
    );
  }
}
