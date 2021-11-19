

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/core/usecases/use_case_config.dart';
import 'package:riverpod_test/features/get_shoes/domain/entities/images_entitie.dart';

final imagesData = Provider<ImagesData>((ref) => ImagesData());

class ImagesData {
  final UseCaseConfig _imagesConfig = UseCaseConfig();

  Future<List<Images>> getShoesList(String id) async {
    return await _imagesConfig.getImageUseCase.getImages(id);
  }
}