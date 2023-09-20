import 'package:borrow/home.dart';
import 'package:flutter/material.dart';

import 'chat.dart';

class DonatePage extends StatelessWidget {
  const DonatePage({super.key});

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
                        Navigator.pop(context);
                      }, icon: Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white,)),
                      Text("Donate",style: TextStyle(color: Colors.white,fontSize: 24.5),),
                      IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage()));}, icon: Image.asset('images/chatting.png',height: 26,width: 26,)),
                    ],
                  ),
                ],    
              ),
            ),
          Padding(
            padding: EdgeInsets.only(top: 250),
            child: Center(child: Text(" 'God gives them whom he thinks can pass it forward '",style: TextStyle(color: Colors.white,fontSize: 20),))),
          Padding(
            padding: EdgeInsets.only(top: 20,left: 0),
            child: Center(child: Text("Please Donate",style: TextStyle(color: Colors.white,fontSize: 20),))),
          ],
        ),
      ),      
    );
  }

  

}

