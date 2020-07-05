import 'package:flutter/material.dart';
import 'Convertor.dart';
import 'consList.dart';

class MyScreen extends StatefulWidget {
  static int selectedItem = 0;

  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Units Convertor"),
      ),
      body: GridView.builder(
          itemCount: unitsName.length,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 500,
              crossAxisSpacing: 50,
              childAspectRatio: 2),
          itemBuilder: (context, index) {
            return Center(
              child: GestureDetector(
                child: Text(unitsName[index]),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return Convertor();
                    }),
                  );

                  MyScreen.selectedItem = index;
                },
              ),
            );
          }),
    );
  }
}
