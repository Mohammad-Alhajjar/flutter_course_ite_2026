// ignore_for_file: prefer_initializing_formals, empty_constructor_bodies

void main() {
  Person noor = Person(name: 'Noor', id: 'SY 12345');
  // noor.setPerson(personName: 'Noor', personId: 'SY 12345');
  print(noor.name);
  noor.walk();

  Person ahmad = Person(name: 'Ahmad', id: 'SY 54321');
  // ahmad.setPerson(personName: 'Ahmad', personId: 'SY 54321');
  print(ahmad.name);
  ahmad.walk();
}

class Person {
  late String id;
  late String name;

  // Person person = Person();

  // Person({required String name, required String id}) {
  //   this.name = name;
  //   this.id = id;
  // }

  Person({required this.name, required this.id});

  // void setPerson({required String personName, required String personId}) {
  //   name = personName;
  //   id = personId;
  // }

  void walk() {
    print("person walking");
  }

  void eat() {
    print("person eatting");
  }
}
