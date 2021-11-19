import 'package:http/http.dart' as http;

import 'package:riverpod_test/core/utils/config.dart';

class ShoesApiClient {
  dynamic get(String path) async {
    var url = Uri.http(Config.BASE_URL, path);

    try {
      final response = await http.get(url);
      print('Trantando de conectarse a $url desde shoes');
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
