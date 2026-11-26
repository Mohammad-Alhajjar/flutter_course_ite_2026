import 'package:meta/meta.dart';
import 'dart:convert';

class ProfileModel {
    final int id;
    final String firstName;
    final String lastName;
    final String maidenName;
    final int age;
    final String gender;
    final String email;
    final String phone;
    final String username;

    ProfileModel({
        required this.id,
        required this.firstName,
        required this.lastName,
        required this.maidenName,
        required this.age,
        required this.gender,
        required this.email,
        required this.phone,
        required this.username,
    });

    ProfileModel copyWith({
        int? id,
        String? firstName,
        String? lastName,
        String? maidenName,
        int? age,
        String? gender,
        String? email,
        String? phone,
        String? username,
    }) => 
        ProfileModel(
            id: id ?? this.id,
            firstName: firstName ?? this.firstName,
            lastName: lastName ?? this.lastName,
            maidenName: maidenName ?? this.maidenName,
            age: age ?? this.age,
            gender: gender ?? this.gender,
            email: email ?? this.email,
            phone: phone ?? this.phone,
            username: username ?? this.username,
        );

    factory ProfileModel.fromJson(String str) => ProfileModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ProfileModel.fromMap(Map<String, dynamic> json) => ProfileModel(
        id: json["id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        maidenName: json["maidenName"],
        age: json["age"],
        gender: json["gender"],
        email: json["email"],
        phone: json["phone"],
        username: json["username"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "firstName": firstName,
        "lastName": lastName,
        "maidenName": maidenName,
        "age": age,
        "gender": gender,
        "email": email,
        "phone": phone,
        "username": username,
    };
}