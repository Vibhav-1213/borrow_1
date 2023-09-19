import 'package:borrow/google_sign_in.dart';
import 'package:borrow/home.dart';
import 'package:borrow/menu_dashboard_layout.dart';
import 'package:borrow/phone.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: LoginPage()));
}

  @override
  Widget build(BuildContext context) =>
     Scaffold(
      backgroundColor: Colors.black,
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if (snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator());
          }
          else if (snapshot.hasData){
            return MenuDashboardPage();
          }
          else if (snapshot.hasError) {
            return Center(child: Text('Something went wrong!'));
          }
          else{
          return SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                  color: Colors.black,
                  ),
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 300,
                      ),
                      Center(child: Text("BORROW",style: TextStyle(color: Color.fromARGB(221, 40, 122, 149),fontSize: 35,fontWeight: FontWeight.bold),)),
                      SizedBox(
                        height: 7,
                      ),
                      SizedBox(
                        height: 120,
                      ),
                      Container(
                        child: Center(
                          child: Align( 
                            alignment: Alignment(0,0.5),
                            child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(primary: Color.fromARGB(221, 2, 52, 68),minimumSize: Size(100, 60)),
                              label: Text("Sign in with Google",style: TextStyle(color: Colors.white,fontSize: 17.5),),
                              icon: Image.asset('images/google.png',
                              height: 32,
                              width: 32,),
                              onPressed: () {
                                final provider = Provider.of<GoogleSignInProvider>(context,listen: false);
                                provider.signInWithGoogle();
                                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                              }
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      // Container(
                      //   child: Center(
                      //     child: Align( 
                      //       alignment: Alignment(0,0.5),
                      //       child: ElevatedButton.icon(
                      //         style: ElevatedButton.styleFrom(primary: Colors.white,minimumSize: Size(100, 60)),
                      //         label: Text("Mobile Sign In",style: TextStyle(color: Colors.black,fontSize: 17.5),),
                      //         icon: Image.asset('images/google.png',
                      //         height: 32,
                      //         width: 32,),
                      //         onPressed: () {
                      //           Navigator.push(context, MaterialPageRoute(builder: (context) => MyPhoneScreen()));
                      //         }
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      SizedBox(
                        height: 144,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
          }
        }
      ),
    );
  }
