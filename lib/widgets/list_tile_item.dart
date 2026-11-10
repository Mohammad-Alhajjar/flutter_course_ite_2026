import 'package:flutter/material.dart';

class ListTileItem extends StatelessWidget {
  const ListTileItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.indigoAccent),
        borderRadius: BorderRadius.circular(50),
      ),
      leading: CircleAvatar(
        backgroundColor: Colors.lightGreenAccent,
        child: Text("AS"),
      ),
      title: Text("Asus Vivobook S16"),
      subtitle: Text("CPU: Core i5-12 , RAM: 8GB"),
      trailing: Text("800\$"),
      tileColor: Color(0x87B8B5ff),
    );
  }
}
