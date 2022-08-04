import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  MyListView({Key? key}) : super(key: key);

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  @override
  Widget build(BuildContext context) {
    return Material(child: ListView(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 5),
          padding: EdgeInsets.all(10),
          
          height: 50,
          color: Color.fromARGB(255, 243, 94, 144),
          child: const Text("AAAAA"),
        ),
         Container(
           margin: EdgeInsets.only(bottom: 5),
           padding: EdgeInsets.all(10),
          height: 50,
          color: Color.fromARGB(255, 243, 94, 144),
          
          child: const Text("AAAAA"),
        ),
         Container(
           margin: EdgeInsets.only(bottom: 5),
           padding: EdgeInsets.all(10),
          height: 50,
          color: Color.fromARGB(255, 243, 94, 144),
          child: const Text("AAAAA"),
        )
      ],
    ),);
  }
}