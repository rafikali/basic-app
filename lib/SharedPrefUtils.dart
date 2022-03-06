import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SharedPrefUtils extends StatefulWidget {
  const SharedPrefUtils({Key? key}) : super(key: key);

  @override
  _SharedPrefUtilsState createState() => _SharedPrefUtilsState();

  Future saveNamePreferences(String name) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String names = prefs.setString('name', name).toString();
    print(names.toString());
  }


  Future getNamePreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? _username = prefs.getString('name');
    print(_username) ;
    return _username;

  }
}


class _SharedPrefUtilsState extends State<SharedPrefUtils> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
