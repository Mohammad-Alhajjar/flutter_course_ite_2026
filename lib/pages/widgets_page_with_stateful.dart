import 'package:flutter/material.dart';

class WidgetsPageWithStateful extends StatefulWidget {
  const WidgetsPageWithStateful({super.key});

  @override
  State<WidgetsPageWithStateful> createState() =>
      _WidgetsPageWithStatefulState();
}

class _WidgetsPageWithStatefulState extends State<WidgetsPageWithStateful> {
  double silderValue = 0.0;
  bool? checkbox = false;
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    print(" ====================");
    print("build worked");
    print(" ====================");
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Slider(
            year2023: false,
            thumbColor: Colors.lightGreen,
            max: 10,
            divisions: 10,
            value: silderValue,
            activeColor: Colors.amber,
            inactiveColor: Colors.pink,
            label: "${silderValue.toInt()}",
            onChanged: (double value) {
              print(value);
              setState(() {
                silderValue = value;
              });
            },
          ),
          SizedBox(height: 10),
          SizedBox(
            width: 100,
            height: 100,
            child: FittedBox(
              child: Checkbox(
                side: BorderSide(color: Colors.cyan),
                shape: StarBorder(),
                tristate: true,
                value: checkbox,
                onChanged: (bool? value) {
                  print(value);
                  setState(() {
                    checkbox = value;
                  });
                },
              ),
            ),
          ),
          SizedBox(height: 10),
          Switch(
            activeThumbImage: NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWUTgZvX2pQ8l2GwIj2gaI8s07T3rgJmvrdLNgot9yJteDb-bpSHPNhjag&s=10",
            ),
            inactiveThumbImage: NetworkImage(
              "https://cdn-icons-png.flaticon.com/512/6714/6714978.png",
            ),
            value: isDark,
            onChanged: (value) {
              setState(() {
                isDark = value;
              });
            },
          ),
          SizedBox(
            width: 200,
            height: 200,
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThqLdIIqAZgq97NlZPbpF-y7OJmPjeWg6qtSglgPCpUiMY6eJjQJEBtjE&s=10",
            ),
          ),
        ],
      ),
    );
  }
}
