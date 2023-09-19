import 'package:flutter/material.dart';
import 'Donate.dart';
import 'FeedBack.dart';
import 'Login_Page.dart';
import 'chat.dart';
import 'developers.dart';

final Color backgroundColor = Color.fromARGB(255, 18, 7, 143);

class PostPage extends StatefulWidget{
  @override
  State<PostPage> createState() => _MenuDashboardPageState();
}

class _MenuDashboardPageState extends State<PostPage> with SingleTickerProviderStateMixin {

  bool isCollapsed = true;
  late double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 200);
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;  
  late Animation <Offset> _slideAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this, duration: duration);
    _scaleAnimation = Tween<double>(begin: 1, end: 0.6  ).animate(_controller);
    _slideAnimation = Tween<Offset>(begin: Offset(-1,0),end: Offset(0,0) ).animate(_controller);    
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
    
  }

  @override
  Widget build (BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          menu(context),
          dashboard(context)
        ],
      ),
    );
  }

  Widget menu(context) {
    return SlideTransition(
      position: _slideAnimation,
      child: Container(
        child: Padding(
          padding: EdgeInsets.only(left: 42),
          child: Align(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 158.5,
                    ),
                    Align(
                      alignment: Alignment(-1.175,1),
                      child: TextButton.icon(
                        onPressed: (){}, 
                        icon: Image.asset('images/slideshow.png',
                        height: 25,
                        width: 25,
                        ), 
                        label: Text("   My Posts",style: TextStyle(fontSize: 22,color: Colors.white),))),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment(-1.2,1),
                      child: TextButton.icon(
                        onPressed: (){}, 
                        icon: Image.asset('images/save.png',
                        height: 25,
                        width: 25,
                        ), 
                        label: Text("   Saved Posts",style: TextStyle(fontSize: 22,color: Colors.white),))),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment(-1.1,1),
                      child: TextButton.icon(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FeedBackPage()));
                        }, 
                        icon: Image.asset('images/opinion.png',
                        height: 25,
                        width: 25,
                        ), 
                        label: Text("   Feedback",style: TextStyle(fontSize: 22,color: Colors.white),))),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment(-1.1,1),
                      child: TextButton.icon(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DonatePage()));
                        }, 
                        icon: Image.asset('images/giveaway.png',
                        height: 25,
                        width: 25,
                        ), 
                        label: Text("   Donate",style: TextStyle(fontSize: 22,color: Colors.white),))),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment(-1.1,1),
                      child: TextButton.icon(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DeveloperPage()));
                        }, 
                        icon: Image.asset('images/developer.png',
                        height: 25,
                        width: 25,
                        ), 
                        label: Text("   Developers",style: TextStyle(fontSize: 22,color: Colors.white),))),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment(-1.1,1),
                      child: TextButton.icon(
                        onPressed: (){}, 
                        icon: Image.asset('images/settings.png',
                        height: 25,
                        width: 25,
                        ), 
                        label: Text("   Settings",style: TextStyle(fontSize: 22,color: Colors.white),))),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment(-1.1,1),
                      child: TextButton.icon(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));}, 
                        icon: Image.asset('images/log-out.png',
                        height: 25,
                        width: 25,
                        ), 
                        label: Text("   Sign Out",style: TextStyle(fontSize: 22,color: Colors.white),))),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
          ),
    );
  }

  Widget dashboard(context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: AnimatedPositioned(
        duration: duration,
        top: 0,
        bottom: 0,
        left: isCollapsed ? 0 : 0.6 * screenWidth,
        right: isCollapsed ? 0 : -0.4 * screenWidth,
        child: ScaleTransition(
          scale: _scaleAnimation,
          child: Material(
            animationDuration: duration,
            color: Colors.black,
            elevation: 18,
            child: Container(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 48),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(0.000001),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 80,
                    color: Color.fromARGB(184, 188, 188, 188),
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      IconButton(onPressed: (){
                        setState(() {
                        if (isCollapsed){
                          _controller.forward();
                        }
                        else {
                          _controller.reverse();
                        }
                        isCollapsed = !isCollapsed;
                      });
                      }, icon: Image.asset('images/menu.png',
                      height: 26,
                      width: 26,),
                      ),
                    Text("POST", style: TextStyle(fontSize: 24, color: Colors.white),),
                    IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage()));},
                    icon: Image.asset('images/chatting.png',
                    height: 26,
                    width: 26
                    ),
                    ),
                  ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0,top: 0),
                    child: Container(
                      height: 550,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromARGB(255, 17, 39, 77)
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 15,top: 20,right: 15),
                            child: TextField(  
                              decoration: InputDecoration(
                                hintText: "Item Title",
                                hintStyle: TextStyle(color: Color.fromARGB(255, 196, 226, 243)),
                                labelText: "Title",
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                ),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                              ),
                              style: TextStyle(color: Color.fromARGB(255, 195, 216, 234)),
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15,top: 40,right: 15),
                            child: TextField(  
                              decoration: InputDecoration(
                                hintText: "Item Description",
                                hintStyle: TextStyle(color: Color.fromARGB(255, 196, 226, 243)),
                                labelText: "Description",
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                ),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                              ),
                              style: TextStyle(color: Color.fromARGB(255, 195, 216, 234)),
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 32),
                            child: ConstrainedBox(
                              constraints: BoxConstraints.tightFor(height: 290,width: 290),
                              child: ElevatedButton(onPressed: (){}, 
                              style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 1, 23, 79),),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 30),
                                    child: Text("Upload the Image",
                                    style: TextStyle(color: 
                                       Colors.white,
                                       fontSize: 22),),
                                  ),],),),),
                          ),
                          // Padding(
                          //   padding: EdgeInsets.only(left:10,right: 10,top: 40),
                          //   child: Container(
                          //     height: 280,
                          //     width: 290,
                          //     decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(10),
                          //       border: Border.all(color: Color.fromARGB(255, 21, 21, 21))
                          //     ),
                          //     child: Column(
                          //       children: [
                          //         Padding(
                          //           padding: EdgeInsets.all(20),
                          //           child: Text("Add the image",style: TextStyle(color: Colors.white,fontSize: 25),))
                          //       ],
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}