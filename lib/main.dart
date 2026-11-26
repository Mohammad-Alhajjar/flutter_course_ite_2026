import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rest_api_3/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashPage());
  }
}
