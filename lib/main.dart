import 'package:flutter/material.dart';
import 'package:flutter_session_4/pages/card_page.dart';
import 'package:flutter_session_4/pages/list_of_laptops_conatiners_with_separator_page.dart';
import 'package:flutter_session_4/pages/scrolling_column_page.dart';
import 'package:flutter_session_4/widgets/list_tile_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CardPage());
  }
}
