// Step 1
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:movieapp/utils/utils/requestdata.dart';
import 'package:logger/logger.dart';

Logger newlog = Logger();
Future printData(bool debug_option) async {

  var data = await RequestData.getSomeData(Uri.parse('http://10.0.2.2:5000/mpopular_m'));
  var decodedData = jsonDecode(data);

  if(debug_option == true){

    newlog.i(decodedData['results']);
  }
    else{


  }
}
void main() {
// Giving command to runApp() to run the app.

/* The purpose of the runApp() function is to attach
the given widget to the screen. */
  runApp(const StreamexApp());
  printData(false);
}

class StreamexApp extends StatefulWidget{
  const StreamexApp({ super.key });

  @override
  State<StreamexApp> createState() => _StreamexAppState();

  }

class _StreamexAppState extends State<StreamexApp>{




  Widget build(BuildContext context) {

    return const MaterialApp(
      home: Scaffold(

        body: SizedBox(


          height: 30,
          width: 30,
        ),
      ),
    );
  }


}
