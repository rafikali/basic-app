import 'package:basics/next.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class HomePage extends StatefulWidget {


  static const String routeName = '/Home';

   HomePage() : super();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController namecontroller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
            children: [
              TextFormField(
                controller: namecontroller,
                decoration: const InputDecoration(
                  labelText: 'Username',

                ),
              ),
              ElevatedButton(
                  onPressed: () async {
                    await saveNamePreferences(namecontroller.text.toString())
                        .then((value) {
                      Navigator.pushNamed(context, NextPage.routeName);
                    }

                    );
                  },
                  child: Text('Click Here')),


            ]
        ),
      ),


    );
  }


  Future saveNamePreferences(String name) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String names = prefs.setString('name', name).toString();
    print(names.toString());
  }
}








// class SharedPrefUtils {
//
//
// }







