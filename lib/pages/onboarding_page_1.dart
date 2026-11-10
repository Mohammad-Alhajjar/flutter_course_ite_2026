
import 'package:flutter/material.dart';
import 'package:flutter_session_3/main.dart';

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.arrow_back)),
          FloatingActionButton(
            onPressed: () {
              myController.nextPage(
                duration: Duration(seconds: 1),
                curve: Curves.linear,
              );
            },
            child: Icon(Icons.arrow_forward),
          ),
        ],
      ),
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("1", style: TextStyle(fontSize: 100)),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                // Todo: Go to page 3
                myController.jumpToPage(2);
              },
              child: Container(
                alignment: Alignment.center,
                width: 200,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black, width: 2),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(10, 10),
                      blurRadius: 15,
                      spreadRadius: 3,
                    ),
                  ],
                ),
                child: Text(
                  "Go To Page 3 with jump",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                // Todo: Go to page 3
                myController.animateToPage(
                  2,
                  duration: Duration(seconds: 1),
                  curve: Curves.bounceInOut,
                );
              },
              child: Container(
                alignment: Alignment.center,
                width: 200,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black, width: 2),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(10, 10),
                      blurRadius: 15,
                      spreadRadius: 3,
                    ),
                  ],
                ),
                child: Text(
                  "Go To Page 3 with Animation",
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
