import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/features/get_shoes/domain/entities/images_entitie.dart';
import 'package:riverpod_test/features/get_shoes/domain/entities/shoe_entitie.dart';
import 'package:riverpod_test/features/get_shoes/presentation/pages/all_sneakers/widgets/card_icons.dart';
import 'package:riverpod_test/features/get_shoes/presentation/pages/all_sneakers/widgets/model_name.dart';
import 'package:riverpod_test/features/get_shoes/presentation/pages/all_sneakers/widgets/model_number.dart';
import 'package:riverpod_test/features/get_shoes/presentation/pages/all_sneakers/widgets/model_price.dart';
import 'package:riverpod_test/features/get_shoes/presentation/pages/all_sneakers/widgets/shoe_image.dart';
import 'package:riverpod_test/features/get_shoes/presentation/providers/provider.dart';

class ShoeCard extends ConsumerWidget {
  final Shoe shoe;
  const ShoeCard({Key? key, required this.shoe}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ignore: unused_local_variable
    AsyncValue<List<Images>> shoeImages = ref.watch(images(shoe.id.toString()));
    return Container(
      height: 350,
      alignment: Alignment.topCenter,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        color: Color(shoe.color),
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          ModelNumber(modelNumber: shoe.modelNumber),
          shoeImages.when(
          data: (shoeImages) {
            return ShoeImage(modelImage: shoeImages.first.image);
          } ,
          error: (err, stack) => Center(
                      child: Text(err.toString()),
          ),
          loading: () => const Center(
                      child: CircularProgressIndicator(),
          )
        ),          
          
          ModelName(modelName: shoe.model,),
          ModelPrice(modelOldPrice: shoe.oldPrice, modelCurrentPrice: shoe.currentPrice,),
          const CardIcons(),
        ],
      ),
    );
  }
}