import 'package:http/http.dart';
import 'package:riverpod_test/core/clients/firebase_client.dart';
import 'package:riverpod_test/core/clients/images_api_client.dart';
import 'package:riverpod_test/core/clients/shoes_api_client.dart';
import 'package:riverpod_test/features/get_shoes/data/datasources/local/shoes_local_data_source.dart';
import 'package:riverpod_test/features/get_shoes/data/datasources/remote/images_remote_data_source.dart';
import 'package:riverpod_test/features/get_shoes/data/datasources/remote/shoes_firebase_datasource.dart';
import 'package:riverpod_test/features/get_shoes/data/datasources/remote/shoes_remote_data_source.dart';
import 'package:riverpod_test/features/get_shoes/data/repositories/images_repository.dart';
import 'package:riverpod_test/features/get_shoes/data/repositories/shoe_repository.dart';
import 'package:riverpod_test/features/get_shoes/domain/usecases/get_images_use_case.dart';
import 'package:riverpod_test/features/get_shoes/domain/usecases/get_shoes_use_case.dart';

class UseCaseConfig {
  // Al cambiar al DataSource Remoto se tiene que inyectar el cliente
  // Cuando cambias de un DataSource a otro se tiene que cambiar tambien en el ShoeRepository()
  late FirebaseClient _client;
  late ShoesFirebaseDataSourceImpl _dataSource;

  /* late ShoesApiClient _client;
  late ShoesRemoteDataSourceImpl _dataSource; */
  //late ShoesLocalDataSourceImpl _dataSource;
  late ShoeRepository _shoeRepository;
  late GetShoesUseCase getShoesUseCase;

  late ImagesApiClient _imageClient;
  late ImageRemoteDataSourceImpl _imageDataSurce;
  late ImagesRepository _imagesRepository;
  late GetImageUseCase getImageUseCase;

  UseCaseConfig() {
    /* _client = ShoesApiClient();
    _dataSource = ShoesRemoteDataSourceImpl(_client); */

    _client = FirebaseClient();
    _dataSource = ShoesFirebaseDataSourceImpl(_client);
    _shoeRepository = ShoeRepository(_dataSource);
    getShoesUseCase = GetShoesUseCase(_shoeRepository);

    _imageClient = ImagesApiClient();
    _imageDataSurce = ImageRemoteDataSourceImpl(_imageClient);
    _imagesRepository = ImagesRepository(_imageDataSurce);
    getImageUseCase = GetImageUseCase(_imagesRepository);
  }
}
