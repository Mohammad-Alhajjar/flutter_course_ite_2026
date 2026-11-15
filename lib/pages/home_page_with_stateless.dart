import 'package:flutter/material.dart';

class HomePageWithStateless extends StatelessWidget {
  HomePageWithStateless({super.key});
  double containerHeight = 300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment(0, 0),
              width: 300,
              height: containerHeight,
              decoration: BoxDecoration(color: Colors.red),
              child: Text(
                "$containerHeight",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                print("before change: $containerHeight");
                containerHeight = 500;
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
          ],
        ),
      ),
    );
  }
}
