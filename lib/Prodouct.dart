import 'package:flutter/material.dart';

class Prodouct extends StatelessWidget {
  //const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Prodout"),
      ),
      body: Center(child:
       Column(children: 
       [ 
        Text("Prodouct"),
        Container(
              width: MediaQuery.of(context).size.width * 0.8,

              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5 ),
              decoration: BoxDecoration(
                color:Color.fromARGB(255, 17, 92, 141),
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person,color: Colors.white),
                  hintText: "Enter Username",
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 30,),

      ],)),
    );
  }
}