import 'package:flutter/material.dart';
import 'package:rest_api_2/models/meal_model.dart';
import 'package:rest_api_2/services/meal_service.dart';

class MealsPage extends StatefulWidget {
  const MealsPage({super.key});

  @override
  State<MealsPage> createState() => _MealsPageState();
}

class _MealsPageState extends State<MealsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          bool isMealCreated = await createMeal(
            newMeal: MealModel(
              id: "100000000",
              name: "Burger 100",
              price: 10,
              image:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS874EXqrhRKfn1AFdhdRePTTiaukO7yMNyJJP86E1XwBJ-n3-A_uvSSKw3&s=10",
            ),
          );
          if (isMealCreated) {
            setState(() {});
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Failed to create new meal ...."),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        child: Icon(Icons.add),
      ),
      body: FutureBuilder(
        future: getMeals(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.network(snapshot.data![index].image),
                  title: Text(snapshot.data![index].name),
                  subtitle: Text(snapshot.data![index].price.toString()),
                );
              },
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: LinearProgressIndicator());
          } else {
            return Center(child: Text("Error"));
          }
        },
      ),
    );
  }
}
