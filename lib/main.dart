import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyAppTest extends StatelessWidget {
  const MyAppTest({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
          leading: FlutterLogo(),
          actions: [Icon(Icons.account_circle, size: 50, color: Colors.green)],
        ),
        floatingActionButton: FlutterLogo(),
        body: Center(child: Text("My App Test")),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
          leading: FlutterLogo(),
          actions: [Icon(Icons.account_circle, size: 50, color: Colors.green)],
        ),
        floatingActionButton: FlutterLogo(),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(100),
              // shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(20, 20),
                  blurRadius: 15,
                  spreadRadius: 20,
                ),
                BoxShadow(
                  color: Colors.pink,
                  offset: Offset(-20, -20),
                  blurRadius: 15,
                  spreadRadius: 20,
                ),
              ],
              // gradient: LinearGradient(
              //   colors: [Colors.limeAccent, Colors.purple],
              //   begin: Alignment.topLeft,
              //   end: Alignment.bottomRight,
              // ),
              // gradient: RadialGradient(
              //   colors: [
              //     Colors.orangeAccent,
              //     Colors.limeAccent,
              //     Colors.indigoAccent,
              //   ],
              //   radius: 0.5,
              // ),
              gradient: SweepGradient(colors: [Colors.grey, Colors.pinkAccent]),
            ),
            width: 350,
            height: 300,
            child: Center(
              child: Text(
                "Hello Flutter",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  wordSpacing: 5,
                  letterSpacing: 2,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
