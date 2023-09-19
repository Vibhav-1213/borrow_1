import 'package:borrow/home.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

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
                    
                    children: [
                      IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                      }, icon: Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white,)),
                      Text("Chat",style: TextStyle(color: Colors.white,fontSize: 24.5),),
                    ],
                  ),
                  
                ],
                  
              ),
            ),
          ],
          
        ),
        ),      
    );
  }

  

}

