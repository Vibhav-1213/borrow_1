// import 'package:borrow/home.dart';
// import 'package:flutter/material.dart';

// class ChatPage extends StatelessWidget {
//   const ChatPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black87,
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 boxShadow: [
//                   // BoxShadow(
//                   //   blurRadius: 80,
//                   //   color: Color.fromARGB(184, 89, 89, 89),
//                   //   spreadRadius: 5,
//                   // ),
//                 ],
//                 color: Colors.black,
//                 borderRadius: BorderRadius.vertical( bottom: Radius.circular(20)),
//               ),
//               padding: EdgeInsets.all(20.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
                    
//                     children: [
//                       IconButton(onPressed: (){
//                         Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
//                       }, icon: Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white,)),
//                       Text("Chat",style: TextStyle(color: Colors.white,fontSize: 24.5),),
//                     ],
//                   ),
                  
//                 ],
                  
//               ),
//             ),
//           ],
          
//         ),
//         ),      
//     );
//   }

  

// }
import 'package:flutter/material.dart';


class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget {
  @override
  State createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  final List<ChatMessage> _messages = <ChatMessage>[];
  final TextEditingController _textController = TextEditingController();

  void _handleSubmitted(String text) {
    _textController.clear();
    ChatMessage message = ChatMessage(
      text: text,
    );
    setState(() {
      _messages.insert(0, message);
    });
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(
        color: Colors.black,
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                controller: _textController,
                onSubmitted: _handleSubmitted,
                decoration: InputDecoration(
                  floatingLabelStyle: TextStyle(color: Colors.white),
                  labelStyle: TextStyle(color: Colors.white),
                  hoverColor: Colors.white,
                  hintText: 'Send a message',
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2, 
                    ),
                  )
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            IconButton(
              icon: Icon(Icons.send,color: Colors.white,),
              onPressed: () => _handleSubmitted(_textController.text),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text('CHAT',style: TextStyle(fontSize: 25),)),
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              padding: EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_, int index) => _messages[index],
              itemCount: _messages.length,
            ),
          ),
          Divider(height: 1.0),
          _buildTextComposer(),
        ],
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  ChatMessage({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              child: Text('User',style: TextStyle(color: Colors.white),),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('User', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue)),
                Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: Text(text,style: TextStyle(color: Colors.white),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

