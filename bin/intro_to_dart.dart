// ignore_for_file: prefer_interpolation_to_compose_strings

import 'dart:ffi';

void main() {
  print("intro to Dart session 1");

  int age = 25;
  print(age);

  int sum = age + 10;
  print(sum);

  double height = 150.5;
  print(height + 10);

  //  sum = height + 100;

  String name = "Ahmad";
  print(name);
  String fullName = name + " " + "Nour";
  print(fullName);

  bool isFound = true;
  isFound = false;
  print(isFound);

  // double salary = 1000;
  // print(salary.runtimeType);

  num speed = 100.9;
  print(speed.runtimeType);

  dynamic anyThing = 10;
  anyThing = 100.5;
  anyThing = false;
  anyThing = "any Thing";
  print(anyThing.runtimeType);

  const double pi = 3.14;
  // pi = 3.15;
  print(pi);

  final int gravity;
  gravity = 10;
  // gravity = 11;
  print(gravity);

  var someThing = 50.5;
  // someThing = "some Thing";
  print(someThing);

  List<String> names = ["MHD", "Nour", "Seba"];
  print(names);
  print(names.length);
  print(names.elementAt(2));
  print(names.first);
  print(names.last);
  print(names[1]);

  Map<String, dynamic> player = {
    "name": "Benzima",
    "T-shirt Number": 10,
    "Nationalty": "France",
    "isMarried": true,
  };

  print(player);
  print(player["name"]);
  print(player.keys.elementAt(1));
  print(player.values.elementAt(2));
  // print(player.values[1]);
}
