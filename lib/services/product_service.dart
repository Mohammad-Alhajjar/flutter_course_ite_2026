import 'package:dio/dio.dart';

Future<List<dynamic>> getProducts() async {
  Dio dio = Dio();

  Response response = await dio.get("https://dummyjson.com/products");
  return response.data["products"];
}


