// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class MealModel {
  String id;
  String fullName;
  int price;
  String image;
  MealModel({
    required this.id,
    required this.fullName,
    required this.price,
    required this.image,
  });




  MealModel copyWith({
    String? id,
    String? fullName,
    int? price,
    String? image,
  }) {
    return MealModel(
      id: id ?? this.id,
      fullName: fullName ?? this.fullName,
      price: price ?? this.price,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      '123full_name': fullName,
      'price': price,
      'image': image,
    };
  }

  factory MealModel.fromMap(Map<String, dynamic> map) {
    return MealModel(
      id: map['id'] as String,
      fullName: map['123full_name'] as String,
      price: map['price'] as int,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory MealModel.fromJson(String source) => MealModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MealModel(id: $id, fullName: $fullName, price: $price, image: $image)';
  }

  @override
  bool operator ==(covariant MealModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.fullName == fullName &&
      other.price == price &&
      other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      fullName.hashCode ^
      price.hashCode ^
      image.hashCode;
  }
}
