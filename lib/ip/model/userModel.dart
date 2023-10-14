// class user {
//   late String id;
//   late String name;
//   late String nomorHp;
//   late String password;
//   late String pengikuti;
//   late String mengikuti;
//   late String resep;
//   late String masakan;
//   late String keranjang;

// }

// To parse this JSON data, do
//
//     final dataGame = dataGameFromJson(jsonString);

import 'dart:convert';

List<user> dataGameFromJson(String str) =>
    List<user>.from(json.decode(str).map((x) => user.fromJson(x)));

String dataGameToJson(List<user> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class user {
  user(
      {
      required this.id,
      required this.name,
      required this.nomerHp,
      required this.password,
      required this.pengikut,
      required this.mengikuti,
      required this.resep,
      required this.masakan,
      required this.keranjang,
      });

  String id;
  String name;
  String nomerHp;
  String password;
  String pengikut;
  String mengikuti;
  String resep;
  String masakan;
  String keranjang;

  factory user.fromJson(Map<String, dynamic> json) => user(
        id: json["id"],
       name: json["name"],
        nomerHp: json["nomerHp"],
        password: json["password"],
        pengikut: json["pengikut"],
        mengikuti: json["mengikuti"],
        resep: json["resep"],
        masakan: json["masakan"],
        keranjang: json["keranjang"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "nomerHp": nomerHp,
        "password": password,
        "pengikut": pengikut,
        "mengikuti": mengikuti,
        "resep": resep,
        "masakan": masakan,
        "keranjang": keranjang,
      };
}
