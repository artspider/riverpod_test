import 'package:riverpod_test/core/clients/shoes_api_client.dart';
import 'package:riverpod_test/features/get_shoes/data/models/shoe_model.dart';

abstract class ShoesRemoteDataSource {
  Future<List<ShoeModel>> getShoes();
}

class ShoesRemoteDataSourceImpl implements ShoesRemoteDataSource {
  final ShoesApiClient _client;

  ShoesRemoteDataSourceImpl(this._client);

  static const String uriGetShoes = 'shoes/public/shoes';

  @override
  Future<List<ShoeModel>> getShoes() async {
    final response = await _client.get(uriGetShoes);
    //print(response.body);
    final List<ShoeModel> shoes = shoeModelFromJson(response.body);
    print('desde dataSource');
    print(shoes);
    return shoes;
  }
}
