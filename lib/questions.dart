import 'package:flutter/material.dart';


class Question extends StatelessWidget {
 final String questionText;

   Question({required this.questionText}) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(questionText,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
