import 'package:basics/answer.dart';
import 'package:basics/questions.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: HomePage(),
      title: 'Flutter Demo',
    );
  }
}

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;

    });
    print(questionIndex);

  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('new app'),
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.redAccent,
          ),
         Positioned(
           bo
           child: Center(
             child: Container(
               height: 200,
               width: 200,
               margin: EdgeInsets.all(25),
               decoration: BoxDecoration(
                 image: DecorationImage(
                   image: NetworkImage('https://images.unsplash.com/photo-1526047932273-341f2a7631f9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Zmxvd2Vyc3xlbnwwfHwwfHw%3D&w=1000&q=80'),
                   fit: BoxFit.cover
                 ),

                 color: Colors.white,
                 borderRadius: BorderRadius.circular(50)
               ),

             ),
           ),
         ),

        ],
      )
    );
  }
}
