import 'package:dio/dio.dart';
import 'package:rest_api_2/models/meal_model.dart';

Future<List<MealModel>> getMeals() async {
  Dio dio = Dio();
  Response response = await dio.get(
    "https://6b058f70db01cf463608b601.mockapi.io/api/v1/meals",
  );
  List<MealModel> meals = [];
  for (int i = 0; i < response.data.length; i++) {
    MealModel meal = MealModel.fromMap(response.data[i]);
    meals.add(meal);
  }
  return meals;
}

Future<bool> createMeal({required MealModel newMeal}) async {
  Dio dio = Dio();
  Response response = await dio.post(
    "https://6b058f70db01cf463608b601.mockapi.io/api/v1/meals",
    data: newMeal.toMap(),
  );
  if (response.statusCode == 201) {
    return true;
  } else {
    return false;
  }
}
