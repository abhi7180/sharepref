import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(home: demo(),));
}

class demo extends StatefulWidget {

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {

  int? counter;
  SharedPreferences? prefs;


  memory()
  async {
    prefs = await SharedPreferences.getInstance();
    counter=prefs!.getInt('counter');


  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    memory();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(onPressed: () {



          }, child: Text("+"))

        ],

      ),
    );
  }
}
