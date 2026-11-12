import 'package:flutter/material.dart';

class BackgroundImagePage extends StatelessWidget {
  const BackgroundImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZc-oV7CiRVE44XfKEDG356YIXWub8bB3fahozDMgXf4DJRhPogtDZ6Jj_&s=10",
            ),
          ),
        ),
      ),
    );
  }
}
