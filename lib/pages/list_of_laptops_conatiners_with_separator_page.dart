import 'package:flutter/material.dart';

class ListOfLaptopsConatinersWithSeparatorPage extends StatelessWidget {
  ListOfLaptopsConatinersWithSeparatorPage({super.key});

  List<String> laptops = [
    "ASUS",
    "DELL",
    "HP",
    "LENOVO",
    "APPLE",
    "HONOR",
    "MSI",
    "ACER",
    "TOSHIBA",
    "SAMSUNG",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        padding: EdgeInsets.all(10),
        itemBuilder: (BuildContext context, int index) {
          print("item index: $index");
          print("================================");
          return Container(
            alignment: Alignment(0, 0),
            width: 200,
            height: 200,
            color: Colors.blue.withValues(alpha: index / 10),
            child: Text(laptops[index], style: TextStyle(fontSize: 50)),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          print("separator index: $index");
          print("-------------------------------------");
          // return SizedBox(height: 10);
          return Divider(
            radius: BorderRadius.circular(20),
            height: 20,
            thickness: 5,
            color: Colors.black,
            indent: 20,
            endIndent: 20,
          );
        },
        itemCount: laptops.length,
      ),
    );
  }
}
