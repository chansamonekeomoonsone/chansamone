import 'package:flutter/material.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
class MyLstBuider extends StatefulWidget {
  MyLstBuider({Key? key}) : super(key: key);

  @override
  State<MyLstBuider> createState() => _MyLstBuiderState();
}

class _MyLstBuiderState extends State<MyLstBuider> {

   List pets = [];
   bool isLoading = true;

  void fetchPets() async{ 
      var url = Uri.https("60f9bc967ae59c0017165f11.mockapi.io", "/pets");
      var response = await http.get(url);
      if(response.statusCode == 200){
        var items = convert.jsonDecode(response.body);
        setState(() {
          pets = items;
          isLoading = false;
        });

        print(items);

      }
      else{
        print("Can not fetch");
      }

    }
  @override
  Widget build(BuildContext context) {
   // final List<List<String>> pets = <List<String>> [
     // ['Dog','Lily'],
     // ['Cat','Garfield'],
      //['Fish','Bob'],
    //];

   

    

    

    fetchPets();
    if(isLoading == true){
      return Material(child: Center(child: CircularProgressIndicator(color: Colors.blue,),),);
    }

    return Material(
      child: ListView.builder(
        
        itemCount: pets.length,
        itemBuilder: (BuildContext context, int index){

          return Container(
            height: 100,
            
            margin: EdgeInsets.only(bottom: 3) ,
            padding: EdgeInsets.all(17),
            color: Color.fromARGB(255, 243, 94, 144),
            
           child: Row(
            children: <Widget>[
              Expanded(
                flex:2,
                 child: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 189, 243, 41),
                  backgroundImage: NetworkImage(pets[index]['avatar']) ,
            
                 
                 
                 ),
                 ),
                 Expanded(
                  
                flex:6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                     
                     Text(
                      pets[index]['name'],
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 30),
                     ),
                     Text(pets[index]['type']),
                    // Text(pets[index][1]), 
                    // SizedBox(height: 2 ,),
                    // Text(pets[index][0]), 
                    
                  ],
                ),
                
                 //child: Text(pets[index][0]), 

                  
                 
                 ),
               
                 Expanded(
                flex:2,
                 child: IconButton(
                  onPressed: () => null,
                 icon: Icon(Icons.phone), color: Color.fromARGB(255, 186, 94, 243),
            
                 ),
                 ),
            ],
           ),

            // color: Colors.red[100],
            // height: 70,
            // margin: EdgeInsets.only(bottom: 8),
            // padding: EdgeInsets.all(17),
            // child: Text(pets[index]),
          );
        },
      ),
    );
  }
}