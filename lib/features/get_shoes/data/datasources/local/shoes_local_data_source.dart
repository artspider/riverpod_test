import 'package:flutter/services.dart';
import 'package:riverpod_test/features/get_shoes/data/models/shoe_model.dart';

abstract class ShoesLocalDataSource {
  Future<List<ShoeModel>> getShoes();
}

class ShoesLocalDataSourceImpl implements ShoesLocalDataSource {

  ShoesLocalDataSourceImpl();

  @override
  Future<List<ShoeModel>> getShoes() async {
    final resp = await rootBundle.loadString('assets/files/shoes.json');
    //final shoes = json.decode(resp);
    final List<ShoeModel> response = shoeModelFromJson(resp);
    if(response.isNotEmpty){
      return response;
    }else{
      throw  Exception('Fue imposible adquirir esta url');
    }
    
  }
}
