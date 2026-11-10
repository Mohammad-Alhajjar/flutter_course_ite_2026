import 'package:flutter/material.dart';
import 'package:flutter_session_3/pages/home_page.dart';
import 'package:flutter_session_3/pages/onboarding_page_1.dart';
import 'package:flutter_session_3/pages/onboarding_page_2.dart';
import 'package:flutter_session_3/pages/onboarding_page_3.dart';

void main() {
  runApp(MyApp());
}

PageController myController = PageController();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PageView(
          controller: myController,
          reverse: false,
          // scrollDirection: Axis.vertical,
          scrollDirection: Axis.horizontal,
          // scrollBehavior: ,
          // scrollBehavior: MaterialScrollBehavior(),
          // physics: BouncingScrollPhysics(),
          physics: NeverScrollableScrollPhysics(),
          children: [
            OnboardingPage1(),
            OnboardingPage2(),
            OnboardingPage3(),
            HomePage(),
          ],
        ),
      ),
    );
  }
}



