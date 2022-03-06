import 'package:basics/SharedPrefUtils.dart';
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

                )
              ),
              ElevatedButton(
                  onPressed: () async {
                    await SharedPrefUtils().saveNamePreferences(namecontroller.text.toString())
                        .then((value) {
                      Navigator.pushNamed(context, NextPage.routeName);
                    }
                    );
                  },
                  child: Text('Click Here')),


            ]
        )   ,
      ),


    );
  }


}










// class SharedPrefUtils {
//
//
// }







