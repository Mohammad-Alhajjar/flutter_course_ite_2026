
import 'package:flutter/material.dart';
import 'package:flutter_session_3/main.dart';

class OnboardingPage3 extends StatelessWidget {
  const OnboardingPage3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              myController.previousPage(
                duration: Duration(seconds: 1),
                curve: Curves.linear,
              );
            },
            child: Icon(Icons.arrow_back),
          ),
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
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("3", style: TextStyle(fontSize: 100)),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                // Todo: Go to page 3
                myController.animateToPage(
                  1,
                  duration: Duration(seconds: 1),
                  curve: Curves.bounceOut,
                );
              },
              child: Container(
                alignment: Alignment.center,
                width: 200,
                height: 70,
                decoration: BoxDecoration(
                  color: Color(0x262626ff),
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
                  "Go To Page 2",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}