import 'package:equatable/equatable.dart';

class Images extends Equatable {
  const Images({required this.id, required this.image});

  final int id;
  final String image;

  @override
  List<Object> get props => [id, image];

  @override
  bool get stringify => true;
}
