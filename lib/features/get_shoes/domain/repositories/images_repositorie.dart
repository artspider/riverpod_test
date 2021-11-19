import 'package:riverpod_test/features/get_shoes/domain/entities/images_entitie.dart';

abstract class IImagesRepositorie {
  Future<List<Images>> getImages(String id);
}
