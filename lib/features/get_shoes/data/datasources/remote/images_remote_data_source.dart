import 'package:riverpod_test/core/clients/images_api_client.dart';
import 'package:riverpod_test/features/get_shoes/data/models/image_model.dart';

abstract class ImageRemoteDataSource {
  Future<List<ImageModel>> getImages(String id);
}

class ImageRemoteDataSourceImpl extends ImageRemoteDataSource {
  final ImagesApiClient _client;

  ImageRemoteDataSourceImpl(this._client);

  static String uriGetImages = 'shoes/public/shoeimages';

  @override
  Future<List<ImageModel>> getImages(String id) async {
    //uriGetImages = uriGetImages + '/' + id;
    // String uri = uriGetImages + '/' + id;
    print(uriGetImages);
    final response = await _client.get(id);
    uriGetImages = "";
    print('response desde imagenes' + response.body);
    final List<ImageModel> images = imageModelFromJson(response.body);
    print(images);
    return images;
  }
}
