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
    var questions = [
      "whats your favorite color?",
      "whats your favourite animal?",
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('new app'),
      ),
      body: Column(
        children: [
          Question(
             questionText: questions[questionIndex],
          ),
          Answer(handler: answerQuestion),
          Answer(handler: answerQuestion),
          Answer(handler: answerQuestion),

        ],
      )
    );
  }
}
