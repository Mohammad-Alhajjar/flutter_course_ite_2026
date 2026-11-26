import 'package:dio/dio.dart';
import 'package:rest_api_2/models/meal_model.dart';

Future<List<MealModel>?> getMeals() async {
  Dio dio = Dio();
  try {
    Response response = await dio.get(
      "https://6b058f70db01cf463608b601.mockapi.io/api/v1/meals",
    );
    if (response.statusCode == 200) {
      List<MealModel> meals = [];
      for (int i = 0; i < response.data.length; i++) {
        MealModel meal = MealModel.fromMap(response.data[i]);
        meals.add(meal);
      }
      return meals;
    } else {
      return null;
    }
  } catch (e) {
    print(e);
    return null;
  }
}

Future<MealModel?> getMeal({required int mealId}) async {
  Dio dio = Dio();
  try {
    Response response = await dio.get(
      "https://6b058f70db01cf463608b601.mockapi.io/api/v1/meals/$mealId",
    );
    if (response.statusCode == 200) {
      MealModel meal = MealModel.fromMap(response.data);
      return meal;
    } else {
      return null;
    }
  } catch (e) {
    print(e);
    return null;
  }
}

Future<bool> createMeal({required MealModel newMeal}) async {
  Dio dio = Dio();
  try {
    Response response = await dio.post(
      "https://6b058f70db01cf463608b601.mockapi.io/api/v1/meals",
      data: newMeal.toMap(),
    );
    if (response.statusCode == 201) {
      return true;
    } else {
      return false;
    }
  } catch (e) {
    print(e);
    return false;
  }
}

Future<bool> updateMeal({required MealModel updatedMeal}) async {
  Dio dio = Dio();
  try {
    Response response = await dio.put(
      "https://6b058f70db01cf463608b601.mockapi.io/api/v1/meals/${updatedMeal.id}",
      data: updatedMeal.toMap(),
    );
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  } catch (e) {
    print(e);
    return false;
  }
}

Future<bool> deleteMeal({required int deletedMealId}) async {
  Dio dio = Dio();
  try {
    Response response = await dio.delete(
      "https://6b058f70db01cf463608b601.mockapi.io/api/v1/meals/$deletedMealId",
    );
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  } catch (e) {
    print(e);
    return false;
  }
}
