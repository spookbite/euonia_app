import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {

  final String uid;
  DatabaseService({this.uid});
  //collection reference
  final CollectionReference userCollection = Firestore.instance.collection('users');

  Future updateUserData(String name, int age, int phone, String c1, String c2) async {
    return await userCollection.document(uid).setData({
      'name': name,
      'age': age,
      'phone': phone,
      'choice1': c1,
      'choice2': c2,
    });
  }

  Stream<QuerySnapshot> get users {
    return userCollection.snapshots();
  }
  
}