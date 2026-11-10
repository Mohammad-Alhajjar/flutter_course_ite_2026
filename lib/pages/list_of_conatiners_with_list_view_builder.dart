import 'package:flutter/material.dart';

class ListOfConatainersWithListViewBuilder extends StatelessWidget {
  ListOfConatainersWithListViewBuilder({super.key});

  List<String> names = [
    "Ahmad",
    "Abd",
    "Noor",
    "Sarah",
    "Mariam",
    "MHD",
    "Asmaa",
    "Hussam",
    "Samir",
    "Sami",
    "Hadi",
    "MHD",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemExtent: 300,
        padding: EdgeInsets.all(30),
        itemCount: names.length,
        itemBuilder: (BuildContext context, int index) {
          print(index);
          return Container(
            alignment: Alignment(0, 0),
            margin: EdgeInsets.only(bottom: 10),
            width: 200,
            height: 200,
            color: Colors.red,
            child: Text(names[index], style: TextStyle(fontSize: 50)),
          );
        },
      ),
    );
  }
}
