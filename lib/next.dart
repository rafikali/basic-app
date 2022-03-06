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
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

  @override
  void initState() {
    // TODO: implement initState
    getNamePreference();
  }
String? username;
Future getNamePreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

  username =  prefs.getString('name') ?? '';

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







