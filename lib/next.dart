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
    super.initState();
    getNamePreference();
  }
  String username = '';

  Future getNamePreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
setState(() {
  username =  prefs.getString('name') ?? '';
  print('this is next page'+username);

});

    // return name;



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




