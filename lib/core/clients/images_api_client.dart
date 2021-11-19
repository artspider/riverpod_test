import 'package:http/http.dart' as http;

import 'package:riverpod_test/core/utils/config.dart';

class ImagesApiClient {
  dynamic get(String id) async {
    String path = 'shoes/public/shoeimages/' + id;
    var url = Uri.http(Config.BASE_URL, path);
    print('path: $path');
    try {
      final response = await http.get(url);
      print('Trantando de conectarse a $url desde imagenes');
      if (response.statusCode == 200) {
        print('Conectado, obteniendo datos...');
        return response;
      } else {
        throw Exception(response.reasonPhrase);
      }
    } catch (e) {
      print('Hubo una excepcion: ${e.toString()}');
      return null;
    }
  }
}
