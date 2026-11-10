import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: Column(
        spacing: 10,
        children: [
          ListTile(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.indigoAccent),
              borderRadius: BorderRadius.circular(50),
            ),
            leading: CircleAvatar(
              backgroundColor: Colors.lightGreenAccent,
              child: Text("A"),
            ),
            title: Text("Asus Vivobook S16"),
            subtitle: Text("CPU: Core i5-12 , RAM: 8GB"),
            trailing: Text("800\$"),
            tileColor: Color(0x87B8B5ff),
          ),
          ListTile(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.indigoAccent),
              borderRadius: BorderRadius.circular(50),
            ),
            leading: CircleAvatar(
              backgroundColor: Colors.lightGreenAccent,
              child: Text("A"),
            ),
            title: Text("Asus Vivobook S16"),
            subtitle: Text("CPU: Core i5-12 , RAM: 8GB"),
            trailing: Text("800\$"),
            tileColor: Colors.yellow,
          ),
          ListTile(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.indigoAccent),
              borderRadius: BorderRadius.circular(50),
            ),
            leading: CircleAvatar(
              backgroundColor: Colors.lightGreenAccent,
              child: Text("A"),
            ),
            title: Text("Asus Vivobook S16"),
            subtitle: Text("CPU: Core i5-12 , RAM: 8GB"),
            trailing: Text("800\$"),
            tileColor: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
