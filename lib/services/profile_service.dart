import 'package:dio/dio.dart';
import 'package:rest_api_3/models/profile_model.dart';
import 'package:rest_api_3/services/auth_service.dart';

Future<ProfileModel?> getProfile() async {
  Dio dio = Dio();
  try {
    Response response = await dio.get(
      'https://dummyjson.com/auth/me',
      options: Options(headers: {"Authorization": "Bearer $token"}),
    );
    if (response.statusCode == 200) {
      ProfileModel profile = ProfileModel.fromMap(response.data);
      return profile;
    } else {
      return null;
    }
  } catch (e) {
    print(e);
    return null;
  }
}
