import 'package:demo_final_1000/pages/home_page.dart';
import 'package:demo_final_1000/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() async {
  print("Hello Flutter");
  print("Hello Flutter #2");
  await Future.delayed(Duration(seconds: 3), () {
    print("Hello Flutter From the future");
  });
  print("Hello Flutter After the future");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginPage());
  }
}
