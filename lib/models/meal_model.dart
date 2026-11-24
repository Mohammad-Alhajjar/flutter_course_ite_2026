// ignore_for_file: public_member_api_docs, sort_constructors_first
class MealModel {
  String id;
  String name;
  int price;
  String image;

  MealModel({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  });

  static MealModel fromMap(Map<String, dynamic> map) {
    return MealModel(
      id: map["id"],
      name: map["name"],
      price: map["price"],
      image: map["image"],
    );
  }

  Map<String, dynamic> toMap() {
    return {"id": id, "name": name, "image": image, "price": price};
  }
}
