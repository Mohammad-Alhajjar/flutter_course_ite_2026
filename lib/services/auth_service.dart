import 'package:dio/dio.dart';
import 'package:rest_api_3/models/login_model.dart';

String token = "";
Future<bool> login({required LoginModel loginInfo}) async {
  Dio dio = Dio();

  try {
    print(loginInfo.username);
    print(loginInfo.password);

    Response response = await dio.post(
      "https://dummyjson.com/auth/login",
      data: loginInfo.toMap(),
    );

    if (response.statusCode == 200) {
      print(response.data["accessToken"]);
      token = response.data["accessToken"];
      return true;
    } else {
      return false;
    }
  } catch (e) {
    print(e);
    return false;
  }
}
