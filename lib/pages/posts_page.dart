// ignore_for_file: strict_top_level_inference

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class PostsPage extends StatefulWidget {
  const PostsPage({super.key});

  @override
  State<PostsPage> createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  List<dynamic> result = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          result = await getPosts();
          setState(() {});
        },
      ),
      body: ListView.builder(
        itemCount: result.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Text(result[index]["id"].toString())),
            title: Text(result[index]["title"]),
            subtitle: Text(result[index]["body"]),
          );
        },
      ),
    );
  }
}

getPosts() async {
  Dio dio = Dio();
  Response response = await dio.get(
    "https://jsonplaceholder.typicode.com/posts",
  );
  return response.data;
}
