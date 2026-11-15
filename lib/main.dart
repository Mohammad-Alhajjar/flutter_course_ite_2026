import 'package:demo_2/pages/home_page_with_stateful.dart';
import 'package:demo_2/pages/home_page_with_stateless.dart';
import 'package:demo_2/pages/main_nav_bar_page.dart';
import 'package:demo_2/pages/widgets_page_with_stateful.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainNavBarPage());
  }
}
