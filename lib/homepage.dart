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

   bool? error;
      @override
  initState(){   

        error = false;

        super.initState();

  }



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
                      if (value == true) {
                       return Navigator.pushNamed(context, NextPage.routeName);
                      } else {
                        setState(() {
                             error == true;
                        });

                      }
                    }

                    );
                  },
                  child: Text('Click Here')),


              error == true ?
              Container(child: Text('val cannot be empty')) :
              Container(child: Center(child: Text('please add value')),)

            ]
        ),
      ),


    );
  }

  Future saveNamePreferences(String? name) async {
    print(name);
    if (name != "") {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String names = prefs.setString('name', name!).toString();
      print(names.toString());
      return true;
    }


  else {
      return false;
    }
  }

  showMsg(errorsts) {
    if (errorsts == true) {

      setState(() {
        error == true;

      });



    } else {
      setState(() {
        error == false;

      });



    }
  }
}




//   void saveName(uname) {
//     String name = uname ;
//     saveNamePreferences(uname);
//   }
// }


class SharedPrefUtils {


}







