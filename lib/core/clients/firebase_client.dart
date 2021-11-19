import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseClient {
  dynamic get() async {
    var firestoreInstance = FirebaseFirestore.instance;
    final _data = await firestoreInstance.collection('shoes').get();

    List<QueryDocumentSnapshot<Map<String, dynamic>>> shoesc = _data.docs;

    return shoesc;
  }
}
