

import 'package:riverpod_test/features/get_shoes/data/datasources/remote/images_remote_data_source.dart';
import 'package:riverpod_test/features/get_shoes/domain/entities/images_entitie.dart';
import 'package:riverpod_test/features/get_shoes/domain/repositories/images_repositorie.dart';

class ImagesRepository implements IImagesRepositorie {
  final ImageRemoteDataSource _dataSource;

  ImagesRepository(this._dataSource);

  @override
  Future<List<Images>> getImages(String id) async {
    return await _dataSource.getImages(id);
  }
}