import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/features/get_shoes/data/models/shoe_model.dart';
import 'package:riverpod_test/presentation/pages/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

 /*  var firestoreInstance = FirebaseFirestore.instance;
  final _data = await firestoreInstance.collection('shoes').get();

  List<QueryDocumentSnapshot<Map<String, dynamic>>> shoesc = _data.docs;

  List<ShoeModel> xshoe = shoeModelFromFirestore(shoesc); */

  /* Iterable<Null> list = shoesc.map((x) {
    print(x.data());
  }); */

  //print('DesdeFirBase $xshoe');

  runApp(ProviderScope(child: MyApp()));
}

final saludoProvider = Provider((ref) => 'Hola Riverpod');

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Material App', home: Home());
  }
}
