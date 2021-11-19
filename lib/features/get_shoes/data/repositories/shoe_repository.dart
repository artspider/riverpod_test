

import 'package:riverpod_test/features/get_shoes/data/datasources/local/shoes_local_data_source.dart';
import 'package:riverpod_test/features/get_shoes/data/datasources/remote/shoes_firebase_datasource.dart';
import 'package:riverpod_test/features/get_shoes/data/datasources/remote/shoes_remote_data_source.dart';
import 'package:riverpod_test/features/get_shoes/domain/entities/shoe_entitie.dart';
import 'package:riverpod_test/features/get_shoes/domain/repositories/shoes_repositorie.dart';

class ShoeRepository implements IShoeRepository {
  //final ShoesLocalDataSource _dataSource;
  //final ShoesRemoteDataSource _dataSource;
  final ShoesFirebaseDataSource _dataSource;

  ShoeRepository(this._dataSource);

  @override
  Future<Shoe> getShoeByID(String id) {
    // TODO: implement getShoeByID
    throw Exception('No se ha implementado este método ');
  }

  @override
  Future<List<Shoe>> getShoes() async {
    return await _dataSource.getShoes();
  }

  
}
