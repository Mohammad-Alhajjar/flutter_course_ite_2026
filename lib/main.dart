import 'package:flutter/material.dart';
import 'package:rest_api_2/pages/comments_page.dart';
import 'package:rest_api_2/pages/meals_page.dart';
import 'package:rest_api_2/pages/products_page.dart';

void main() async {
  print("Hello Flutter");
  await Future.delayed(Duration(seconds: 3), () {
    print("Hello Flutter After Delayed");
  });
  print("Hello MHD");

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MealsPage());
  }
}
