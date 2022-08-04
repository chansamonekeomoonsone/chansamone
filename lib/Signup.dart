import 'package:delivery/Login.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  //const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),

      ),
      body: Center(
        child: Column(
          children: [
        Text(
          ""
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.8 ,
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 180, 33, 243),
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
                decoration: InputDecoration(
                  icon: Icon(Icons.person,color: Color.fromARGB(255, 243, 245, 246),),
                  hintText: 'Enter Username',
                  hintStyle: TextStyle(fontSize: 20.0, color: Color.fromARGB(255, 7, 1, 1)),
                  border: InputBorder.none,
                ),
              ),
            ),
            
            SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width * 0.8 ,
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 82, 33, 243),
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                obscureText: true,
                style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
                decoration: InputDecoration(
                  icon: Icon(Icons.key,color: Color.fromARGB(255, 243, 245, 246),),
                  hintText: 'Enter Password',
                  hintStyle: TextStyle(fontSize: 20.0, color: Color.fromARGB(255, 7, 1, 1)),
                  border: InputBorder.none,
                ),
              ),
            ),

            SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width * 0.8 ,
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 219, 33, 243),
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                
                style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
                decoration: InputDecoration(
                  icon: Icon(Icons.email_outlined,color: Color.fromARGB(255, 243, 245, 246),),
                  hintText: 'Enter Email',
                  hintStyle: TextStyle(fontSize: 20.0, color: Color.fromARGB(255, 7, 1, 1)),
                  border: InputBorder.none,
                ),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Alrady a member'), 
                TextButton( 
                onPressed: (){
                Navigator.pop(context, MaterialPageRoute(builder: (context) => login(),),);
          },
           child: Text("Login",style:TextStyle(color: Color.fromARGB(255, 37, 7, 119)) ,), 
           ),
              ],
            ),
      ],
      ),
      ),
    );
  }
}