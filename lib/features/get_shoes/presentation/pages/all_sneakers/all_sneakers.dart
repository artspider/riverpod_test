import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/features/get_shoes/domain/entities/images_entitie.dart';
import 'package:riverpod_test/features/get_shoes/domain/entities/shoe_entitie.dart';
import 'package:riverpod_test/features/get_shoes/presentation/pages/all_sneakers/widgets/shoe_card.dart';
import 'package:riverpod_test/features/get_shoes/presentation/providers/provider.dart';

class AllSneakers extends ConsumerWidget {
  const AllSneakers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<List<Shoe>> nikeShoes = ref.watch(shoes);
    // ignore: unused_local_variable
    

    return SafeArea(
      child: Column(
        children: [
          //const SizedBox(height: 50,),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 20, bottom: 20),
            child: Image.asset(
              "assets/images/nike_logo.png",
              height: 60,
            ),
          ),

          Expanded(
            child: nikeShoes.when(
                data: (nikeShoes) {
                  return ListView.builder(
                      itemCount: nikeShoes.length,
                      itemBuilder: (context, index) {
                        return ShoeCard(shoe: nikeShoes[index]);
                      });
                },
                error: (err, stack) => Center(
                      child: Text(err.toString()),
                    ),
                loading: () => const Center(
                      child: CircularProgressIndicator(),
                    )),
            /* ListView.builder(
              itemCount: nikeShoes.length,
              itemBuilder: (context, index ) {
                return ShoeCard(shoe: nikeShoes[index]);
              },
            ), */
          ),
        ],
      ),
    );
  }
}

/* ListView(
              children: [
                ShoeCard(shoe: nikeShoes[0]),
                ShoeCard(shoe: nikeShoes[1]),
                ShoeCard(shoe: nikeShoes[2]),
                ShoeCard(shoe: nikeShoes[3]),
              ],
            ),
            */
