import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/core/usecases/use_case_config.dart';
import 'package:riverpod_test/features/get_shoes/domain/entities/shoe_entitie.dart';

final shoesData = Provider<ShoesData>((ref) => ShoesData());

class ShoesData {
  final UseCaseConfig _shoesConfig = UseCaseConfig();

  Future<List<Shoe>> getShoesList() async {
    return await _shoesConfig.getShoesUseCase.getAll();
  }
}
