import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          // spacing: 20,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(width: 300, height: 200, color: Colors.red),
            Container(height: 30),
            Container(
              width: 200,
              height: 200,
              color: Colors.green,
              child: Image.asset("assets/images/cat.jpg", fit: BoxFit.fitWidth),
            ),
            SizedBox(height: 40, width: 100),
            Container(width: 200, height: 200, color: Colors.blue),
            SizedBox(
              width: 700,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      width: 200,
                      height: 200,
                      color: Colors.yellow,
                      child: Image.network(
                        "https://i.natgeofe.com/n/9135ca87-0115-4a22-8caf-d1bdef97a814/75552.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(width: 200, height: 200, color: Colors.pink),
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(20),
                    width: 200,
                    height: 200,
                    color: Colors.orange,
                    child: Text(
                      "Hello Flutter",
                      style: TextStyle(backgroundColor: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
