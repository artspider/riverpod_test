import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/features/get_shoes/domain/entities/images_entitie.dart';
import 'package:riverpod_test/features/get_shoes/presentation/providers/images_data.dart';
import 'package:riverpod_test/features/get_shoes/presentation/providers/shoes_data.dart';

final shoes = FutureProvider((ref) async {
  return ref.read(shoesData).getShoesList();
});

final images = FutureProvider.family<List<Images>, String>((ref, id) async {
  return ref.read(imagesData).getShoesList(id);
});


