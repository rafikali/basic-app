import 'package:basics/homepage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NextPage extends StatefulWidget {
  static const String routeName = '/next';
  String? name = "";

   NextPage({ this.name}) : super();
  @override
  State<NextPage> createState() => _NextPageState();


}

class _NextPageState extends State<NextPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadState();
  }

  void loadState() {
    SharedPrefUtils().getNamePreference(updateName);
  }
  void updateName(String name) {
    setState(() {
      widget.name = name;
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Text(widget.name.toString()),

      ),

    );
  }
}




