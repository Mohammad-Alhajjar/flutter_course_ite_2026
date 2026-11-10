import 'package:flutter/material.dart';

class ListofConatinersWithListView extends StatelessWidget {
  const ListofConatinersWithListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        itemExtent: 300,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(20),
        children: [
          Container(height: 200, color: Colors.red),
          Container(height: 200, color: Colors.green),
          Container(height: 200, color: Colors.black),
          Container(height: 200, color: Colors.red),
        ],
      ),
    );
  }
}
