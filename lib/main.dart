import 'package:flutter/material.dart';
import 'package:grid_view_text_field/pages/background_image_page.dart';
import 'package:grid_view_text_field/pages/grid_view_builder_page.dart';
import 'package:grid_view_text_field/pages/grid_view_page.dart';
import 'package:grid_view_text_field/pages/text_field_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: BackgroundImagePage());
  }
}
