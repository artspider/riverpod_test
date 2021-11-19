import 'package:riverpod_test/features/get_shoes/domain/entities/images_entitie.dart';
import 'package:riverpod_test/features/get_shoes/domain/repositories/images_repositorie.dart';

class GetImageUseCase {
  final IImagesRepositorie imagesRepositorie;

  GetImageUseCase(this.imagesRepositorie);

  Future<List<Images>> getImages(String id) async {
    return await imagesRepositorie.getImages(id);
  }
}
