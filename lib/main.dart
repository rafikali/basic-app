import 'package:basics/answer.dart';
import 'package:basics/homepage.dart';
import 'package:basics/nextpage.dart';
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

    return  const MaterialApp(
      title: 'Flutter Demo',

      onGenerateRoute: RouteGenerator.generateRoute

);

  }
}

