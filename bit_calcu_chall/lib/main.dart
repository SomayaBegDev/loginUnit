import 'package:bit_calcu_chall/BitConverter.dart';
import 'package:bit_calcu_chall/BottomHalf.dart';
import 'package:bit_calcu_chall/UpperRow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'consList.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyScreen());
  }
}

class MyScreen extends StatelessWidget {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Convertor"),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return BitConverter();
            }),
          );
          //setState(() {});
        },
        child: GridView.builder(
            itemCount: unitsName.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 500,
                crossAxisSpacing: 50,
                childAspectRatio: 2),
            itemBuilder: (context, index) {
              pageIndex = index;
              return Center(child: Text(unitsName[index]));
            }),
      ),
    );
  }
}

/*GestureDetector(
                child: Text("Bit",),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return unitsName[index];
                    }),
                  );
                  setState(() {});
                },
              )*/
