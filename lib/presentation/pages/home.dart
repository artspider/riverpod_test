import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/features/get_shoes/presentation/providers/provider.dart';

import 'package:riverpod_test/features/get_shoes/presentation/pages/all_sneakers/all_sneakers.dart';
import 'package:riverpod_test/features/get_shoes/presentation/pages/cart/cart.dart';
import 'package:riverpod_test/features/get_shoes/presentation/pages/liked/liked.dart';
import 'package:riverpod_test/features/get_shoes/presentation/pages/profile/profile.dart';
import 'package:riverpod_test/features/get_shoes/presentation/pages/search/search.dart';

final actualIndex = StateProvider<int>((ref) => 0);

class Home extends ConsumerWidget {
  const Home({Key? key}) : super(key: key);

  final _pages = const [AllSneakers(), Search(), Liked(), Cart(), Profile()];

  

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void _onItemTapped(int index) {
    ref.read(actualIndex.notifier).state = index;
  }
    
    final index = ref.watch(actualIndex);
    
    return Scaffold(
       body: _pages[index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        onTap:  _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorites"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profiles"),
        ], 
    )
  );
  }
}
