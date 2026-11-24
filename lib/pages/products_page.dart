import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:rest_api_2/services/product_service.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  void initState() {
    print("init state called ...");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getProducts(),
        builder: (BuildContext context, snapshot) {
          print(snapshot.data);
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.network(snapshot.data![index]["thumbnail"]),
                  title: Text(snapshot.data![index]["title"]),
                  subtitle: Text(snapshot.data![index]["description"]),
                );
              },
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else {
            return Center(child: Text("Error, failed to get data ...."));
          }
        },
      ),
    );
  }
}
