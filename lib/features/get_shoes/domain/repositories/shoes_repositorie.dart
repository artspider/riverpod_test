// Repositorio del modelo Shoe == Capa Domain
// Es la interface (clase abstracta o contrato) que indica lo que se tiene que implementar



import 'package:riverpod_test/features/get_shoes/domain/entities/shoe_entitie.dart';

abstract class IShoeRepository {
  Future<List<Shoe>> getShoes();
  Future<Shoe> getShoeByID(String id);
}
