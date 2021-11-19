// Modelo de la clase Shoes == Capa Data
// Esta clase permite convertir de Json a un modelo y viceversa

import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_test/features/get_shoes/domain/entities/shoe_entitie.dart';

// To parse this JSON data, do
//
//     final shoeModel = shoeModelFromJson(jsonString);


List<ShoeModel> shoeModelFromFirestore(List<QueryDocumentSnapshot<Map<String, dynamic>>> query) =>
    List<ShoeModel>.from(
      query.map((e) => ShoeModel.fromJson(e.data()))
    );

List<ShoeModel> shoeModelFromJson(String str) =>
    List<ShoeModel>.from(json.decode(str).map((x) => ShoeModel.fromJson(x)));

String shoeModelToJson(List<ShoeModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ShoeModel extends Shoe {
  const ShoeModel({
    required int id,
    required String model,
    required int oldPrice,
    required int currentPrice,
    required int modelNumber,
    required int color
  }) : super(
            id: id,
            model: model,
            oldPrice: oldPrice,
            currentPrice: currentPrice,
            color: color,
            modelNumber: modelNumber);

  factory ShoeModel.fromJson(Map<String, dynamic> json) => ShoeModel(
        id: json["id"],
        model: json["model"],
        oldPrice: json["oldPrice"],
        currentPrice: json["currentPrice"],
        modelNumber: json["modelNumber"],
        color: json["color"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "model": model,
        "oldPrice": oldPrice,
        "currentPrice": currentPrice,
        "modelNumber": modelNumber,
        "color": color,
      };
}
