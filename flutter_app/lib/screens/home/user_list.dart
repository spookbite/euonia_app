import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

class UserList extends StatefulWidget {
  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {

    final users = Provider.of<QuerySnapshot>(context);
    //print(users.documents);
    for (var doc in users.documents) {
      print(doc.data);
    }
    return Container();
  }
}
