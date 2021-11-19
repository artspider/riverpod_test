// Entidad Shoe  === Capa Domain

import 'package:equatable/equatable.dart';

class Shoe extends Equatable {
  final int id;
  final String model;
  final int modelNumber;
  final int color;
  final int oldPrice;
  final int currentPrice;

  const Shoe({
    required this.id,
    required this.model,
    required this.oldPrice,
    required this.currentPrice,
    required this.modelNumber,
    required this.color
  });

  @override
  List<Object> get props => [model, oldPrice, currentPrice, modelNumber, color];

  @override
  bool get stringify => true;
}
