
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pagesAdmin = Provider<PagesAdmin>((ref) => PagesAdmin());

class PagesAdmin {
  int currentIndex = 0;  

  Future<void> initPages() async {
    currentIndex = 0;
  }

  Future<void> setIndex(int index) async {
    currentIndex = index;
  }
}
