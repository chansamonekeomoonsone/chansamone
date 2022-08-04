
import 'package:delivery/Product.dart';
import 'package:delivery/WorldTime.dart';
import 'package:delivery/airlines.dart';
import 'package:delivery/test.dart';
import 'package:flutter/material.dart';
//import 'Login.dart';
import 'airlines.dart';
import '_loading.dart';
import 'mylistview.dart';
import 'MyListBuilder.dart';

void main(List<String> args) {
  runApp(Delivery());
}

class Delivery extends StatelessWidget {
  //const Delivery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lao-Top Delivery',
      home: MyLstBuider(),

    );
  }
}