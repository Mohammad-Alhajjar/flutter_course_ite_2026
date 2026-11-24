import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CommentsPage extends StatefulWidget {
  const CommentsPage({super.key});

  @override
  State<CommentsPage> createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  List<dynamic> result = [];

  @override
  void initState() {
    print("init state called ...");
    WidgetsBinding.instance.addPostFrameCallback((Duration value) async {
      result = await getComments();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(onPressed: () async {}),
      body: ListView.builder(
        itemCount: result.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Text(result[index]["id"].toString())),
            title: Text(result[index]["name"]),
            subtitle: Text(result[index]["email"]),
          );
        },
      ),
    );
  }
}

Future<List<dynamic>> getComments() async {
  Dio dio = Dio();

  Response response = await dio.get(
    "https://jsonplaceholder.typicode.com/comments",
  );
  return response.data;
}
