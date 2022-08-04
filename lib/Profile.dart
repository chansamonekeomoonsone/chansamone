// import 'package:flutter/material.dart';

// class Profile extends StatelessWidget {
//   //const Profile({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Profile"),
//       ),
//       body: Row(children: [
//         Stack(
//           children: [
            
//             Container(
//               width: 600,
//               height: 300,
           
//               // margin: EdgeInsets.all(50),
//                decoration: BoxDecoration(
//                 color: Color.fromARGB(255, 0, 102, 255),
                
//                // borderRadius: BorderRadius.circular(360),
//               ),
              
//               child: TextField(
//                 decoration: InputDecoration(
//                  // icon: Icon(Icons.person,color: Colors.white),
//                   hintText: "WELCOME TO chansamone@gmail.come",
//                   border: InputBorder.none,
                 
//                 ),
//               ),
               
            
//             )
//           ],
//         )
        
//       ],)
//     );
//   }
// }








import 'package:flutter/material.dart';
//import 'package:shopping/AppDrawer.dart';
//import 'package:shopping/Product.dart';
class Profile extends StatelessWidget {
  //const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//AppBar
      appBar:AppBar(
        title: Text("profile"),
      ),

     
 backgroundColor: Color.fromARGB(255, 9, 80, 138),  //ສີພື້ນ
      body: Center(  //ກຳນົດໃຫ້ຢູ່ກາງຈໍ - centerຈະມີ widget ໄດ້ພຽງ 1 ອັນ
      child: Column(    //ກຳນົດໃຫ້ທຸກໆ widget ລຽງລົງມາຕາມລວງຕັ້ງ - ສາມາດມີຫຼາຍwidget
      children: [
         SizedBox(
          height: 30,
        ),
        
        Stack(children: <Widget>[
          
              CircleAvatar(
                radius: 70,
                child: ClipOval(child: Image.asset('images/in.jpg', height: 130, width: 130, fit: BoxFit.cover,),),
              ),
              Positioned(bottom: 1, right: 1 ,child: Container(
                height: 40, width: 40,
                //child: Icon(Icons.add_a_photo, color: Colors.white,),
                //decoration: BoxDecoration(
                 // color: Color.fromARGB(255, 244, 244, 249),
                 // borderRadius: BorderRadius.all(Radius.circular(20))
             //   ),
              ))
            ], 
        ),

         SizedBox(
          height: 35,
        ),
        Text(
          "WELCOME TO ",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
            color: Color.fromARGB(255, 247, 244, 244),
          ),
          ),
                  Text(
          "chansampne@gmail.com ",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
            color: Color.fromARGB(255, 231, 239, 235),
          ),
          ),

 //Username
        SizedBox(
          height: 30,
        ),
        
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 4),
             decoration: BoxDecoration(
                      color: Color.fromARGB(255, 35, 129, 98),
                    ),
          child: TextField(
           // style: TextStyle(color: Colors.white),
            //obscureText: true,
            
            decoration: InputDecoration(
              
              hintText: 'Dashhoard',hintStyle: TextStyle(color: Colors.white),

              icon: Icon(
                Icons.dashboard,
                color: Color.fromARGB(255, 30, 57, 189),
              ),
            ),
          ),
        ), 

        
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 4),
             decoration: BoxDecoration(
                      color: Color.fromARGB(255, 35, 129, 98),
                    ),
          child: TextField(
            //obscureText: true,
            decoration: InputDecoration(
              hintText: 'Accounts', hintStyle: TextStyle(color: Colors.white),
              icon: Icon(
                Icons.account_balance,
                color: Color.fromARGB(255, 81, 63, 212),
              ),
            ),
          ),
        ),



        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 4),
             decoration: BoxDecoration(
                      color: Color.fromARGB(255, 35, 129, 98),
                    ),
          child: TextField(
            //obscureText: true,
            decoration: InputDecoration(
              hintText: 'Twitter',hintStyle: TextStyle(color: Colors.white),
              icon: Icon(
                Icons.mail,
                color: Color.fromARGB(255, 43, 135, 211),
              ),
            ),
          ),
        ),


        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 4),
             decoration: BoxDecoration(
                      color: Color.fromARGB(255, 35, 129, 98),
                    ),
          child: TextField(
            //obscureText: true,
            decoration: InputDecoration(
              hintText: 'Settins',hintStyle: TextStyle(color: Colors.white),
              icon: Icon(
                Icons.settings,
                color: Color.fromARGB(255, 37, 72, 210),
              ),
            ),
          ),
        ),


        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 4),
             decoration: BoxDecoration(
                     color: Color.fromARGB(255, 35, 129, 98),
                    ),
          child: TextField(
            //obscureText: true,
            decoration: InputDecoration(
              hintText: 'Logout',hintStyle: TextStyle(color: Colors.white),
              icon: Icon(
                Icons.logout,
                color: Color.fromARGB(255, 63, 150, 221),
              ),
            ),
          ),
        ),
        
         SizedBox(
          height: 30,         
        ),         
          
          
          // ElevatedButton(
          //   onPressed: () {
             
          // },
          // style: ElevatedButton.styleFrom(
          //  primary: Color.fromARGB(255, 78, 74, 151),
          // ),
          //  child:           
          //  Text("EDIT PROFILE" ,  
          // style: TextStyle(
            
          //   color: Color.fromARGB(255, 15, 81, 64)
          //    //backgroundColor: Color.fromARGB(255, 191, 206, 218), 
          //   ),

          //  ),
          //  ),
        
              ],            
      ),  
      ),  
    );

  }
}







