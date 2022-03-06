import 'package:basics/SharedPrefUtils.dart';
import 'package:basics/homepage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NextPage extends StatefulWidget {
  static const String routeName = '/next';

   NextPage();
  @override
  State<NextPage> createState() => _NextPageState();


}

class _NextPageState extends State<NextPage> {


  @override
  void initState() {
    // TODO: implement initState
   getData();

  }
  String? username;


   getData(){
   SharedPrefUtils().getNamePreferences().then((value) => {
      setState((){
        username = value;
      })
    });
    // print('this is' + pref);
    // setState(() {
    // username = pref.toString();
    // });

  }








  // void updateName(String name) {
  //   setState(() {
  //     widget.name = name;
  //   });
  //
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Text(username.toString()),

      ),

    );
  }
}







