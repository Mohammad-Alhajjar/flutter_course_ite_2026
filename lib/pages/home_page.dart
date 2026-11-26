import 'package:flutter/material.dart';
import 'package:rest_api_3/services/profile_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: getProfile(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListTile(
                leading: Text(snapshot.data!.id.toString()),
                title: Text(snapshot.data!.username),
                subtitle: Text(snapshot.data!.email),
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else {
              return Text("Error");
            }
          },
        ),
      ),
    );
  }
}
