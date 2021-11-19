import 'package:riverpod_test/core/clients/firebase_client.dart';
import 'package:riverpod_test/core/clients/shoes_api_client.dart';
import 'package:riverpod_test/features/get_shoes/data/models/shoe_model.dart';

abstract class ShoesFirebaseDataSource {
  Future<List<ShoeModel>> getShoes();
}

class ShoesFirebaseDataSourceImpl implements ShoesFirebaseDataSource {
  final FirebaseClient _client;

  ShoesFirebaseDataSourceImpl(this._client);

  @override
  Future<List<ShoeModel>> getShoes() async {    
      final response = await _client.get();
      List<ShoeModel> shoes = shoeModelFromFirestore(response);
      print('desde dataSource');
      print(shoes);
      return shoes;
  }
}