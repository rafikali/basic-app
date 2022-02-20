import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback handler;
   Answer({required this.handler}) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  ElevatedButton(
          child: Text('!Answer 1'),
          onPressed: handler,

      ),
    );
  }
}
