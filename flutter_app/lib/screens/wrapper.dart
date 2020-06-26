import 'package:flutter/material.dart';
import 'package:flutterapp/models/user.dart';
import 'package:flutterapp/screens/authenticate/authenticate.dart';
import 'package:flutterapp/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);

    //return either Home or Authenticate widget
    ifa (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
