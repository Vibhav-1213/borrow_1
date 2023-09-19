import 'package:borrow/home.dart';
import 'package:flutter/material.dart';

import 'chat.dart';

class DeveloperPage extends StatelessWidget {
  const DeveloperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  // BoxShadow(
                  //   blurRadius: 80,
                  //   color: Color.fromARGB(184, 89, 89, 89),
                  //   spreadRadius: 5,
                  // ),
                ],
                color: Colors.black,
                borderRadius: BorderRadius.vertical( bottom: Radius.circular(20)),
              ),
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                      }, icon: Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white,)),
                      Text("Developers",style: TextStyle(color: Colors.white,fontSize: 24.5),),
                      IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage()));
                      }, icon: Image.asset('images/chatting.png',height: 26,width: 26,)),
                    ],
                  ),
                  
                ],
                  
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20,top: 30),
              child: Container(
                width: 320,
                height: 320,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('images/vibhav.jpg'),fit: BoxFit.cover),
                  boxShadow: [
                    // BoxShadow(
                    //   blurRadius: 15,
                    //   color: Colors.white,
                    //   spreadRadius: 1,
                    // ),
                  ],
                color: Color.fromARGB(255, 0, 0, 0),
                borderRadius: BorderRadius.circular(20),
                  ),
                ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 60,top: 30),
              child: Text("C S SRIVIBHAV",style: TextStyle(color: Colors.white,fontSize: 30),)),
            Padding(
              padding: EdgeInsets.only(left: 50,top: 20),
              child: Text("2022B2A41032P",style: TextStyle(color: Colors.white,fontSize: 30),)),
          ],
          
        ),
        ),      
    );
  }

  

}

