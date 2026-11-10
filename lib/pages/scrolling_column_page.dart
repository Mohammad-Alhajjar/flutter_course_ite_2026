
import 'package:flutter/material.dart';

class ScollingColumnPage extends StatelessWidget {
  const ScollingColumnPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(width: 200, height: 200, color: Colors.red),
            Container(width: 200, height: 200, color: Colors.green),
            Container(width: 200, height: 200, color: Colors.blue),
            Container(width: 200, height: 200, color: Colors.yellow),
            Container(width: 200, height: 200, color: Colors.pink),
            Container(width: 200, height: 200, color: Colors.purple),
            Container(width: 200, height: 200, color: Colors.orange),
            Container(width: 200, height: 200, color: Colors.red),
            Container(width: 200, height: 200, color: Colors.red),
            Container(width: 200, height: 200, color: Colors.green),
            Container(width: 200, height: 200, color: Colors.blue),
            Container(width: 200, height: 200, color: Colors.yellow),
            Container(width: 200, height: 200, color: Colors.pink),
            Container(width: 200, height: 200, color: Colors.purple),
            Container(width: 200, height: 200, color: Colors.orange),
            Container(width: 200, height: 200, color: Colors.red),
          ],
        ),
      ),
    );
  }
}
