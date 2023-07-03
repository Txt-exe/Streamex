// Step 1
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:movieapp/utils/utils/requestdata.dart';

Future printData() async {

  var data = await RequestData.getSomeData(Uri.parse('http://10.0.2.2:5000//mpopular_m'));
  var decodedData = jsonDecode(data);
  print(decodedData['results']);
  print("hi");

}
void main() {
// Giving command to runApp() to run the app.

/* The purpose of the runApp() function is to attach
the given widget to the screen. */
  runApp(const StreamexApp());
  printData();
}

class StreamexApp extends StatefulWidget{
  const StreamexApp({ super.key });

  @override
  State<StreamexApp> createState() => _StreamexAppState();

  }

class _StreamexAppState extends State<StreamexApp>{




  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(

        body: Container(


        ),
      ),
    );
  }


}
