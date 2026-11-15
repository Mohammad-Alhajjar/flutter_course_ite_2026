import 'package:flutter/material.dart';

class HomePageWithStateful extends StatefulWidget {
  const HomePageWithStateful({super.key});

  @override
  State<HomePageWithStateful> createState() {
    return HomePageWithStatefulState();
  }
}

class HomePageWithStatefulState extends State<HomePageWithStateful> {
  double containerHeight = 300;
  Color conatinerColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    print("-----------------------------------");
    print("build function started ....");
    print("-----------------------------------");
    return Scaffold(
      appBar: AppBar(title: Text("Home Page With Stateful")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 1),
              alignment: Alignment(0, 0),
              width: 300,
              height: containerHeight,
              decoration: BoxDecoration(color: conatinerColor),
              child: Text(
                "$containerHeight",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                print("before change: $containerHeight");
                setState(() {
                  containerHeight = 500;
                });
                print("after change: $containerHeight");
              },
              child: Container(
                alignment: Alignment(0, 0),
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
                child: Text(
                  "Change Height",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                setState(() {
                  conatinerColor = Colors.pinkAccent;
                });
              },
              child: Container(
                alignment: Alignment(0, 0),
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amber,
                ),
                child: Text(
                  "Change Color",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
