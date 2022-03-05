import 'package:basics/next.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class HomePage extends StatelessWidget {
  TextEditingController? controller;

  static const String routeName = '/Home';

   HomePage({this.controller}) : super();
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: Column(
            children: [
              TextFormField(
                controller: controller,
              decoration: InputDecoration(
                labelText: 'Username',

              ),
            ),
              ElevatedButton(
                  onPressed: () {
                    SharedPrefUtils().saveName();
                    Navigator.pushNamed(context, NextPage.routeName);
                  },
                  child: Text('Click Here'))

            ]
          ),

        ),
      ),




    );
  }




  }


class SharedPrefUtils {

  Future saveNamePreferences(String name) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('name', name);

  }

  Future getNamePreference([void updateName]) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? name = prefs.getString('name');
    return name;
  }
  void saveName() {
    String name = HomePage().controller.toString();
    saveNamePreferences(name);
  }
}






