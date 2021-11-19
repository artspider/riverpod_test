// Caso de Uso del modelo Shoes == Capa Domain
// GetShoes nos devolverá todos los objetos en el dataSource

import 'package:riverpod_test/features/get_shoes/domain/entities/shoe_entitie.dart';
import 'package:riverpod_test/features/get_shoes/domain/repositories/shoes_repositorie.dart';

class GetShoesUseCase {
  final IShoeRepository shoesRepository;

  GetShoesUseCase(this.shoesRepository);

  Future<List<Shoe>> getAll() async {
    return await shoesRepository.getShoes();
  }

  Future<Shoe> getShoeByID(String id) async {
    return await shoesRepository.getShoeByID(id);
  }
}
