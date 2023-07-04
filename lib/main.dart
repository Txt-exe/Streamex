// Step 1
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:movieapp/utils/utils/requestdata.dart';
import 'package:logger/logger.dart';

Logger newlog = Logger();

//Test Function for testing connection with python server
Future printData(bool debug_option) async {

  var data = await RequestData.getMediaData(Uri.parse('http://10.0.2.2:5000/mpopular_m'));
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




  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
      backgroundColor: Colors.black45,
        appBar: AppBar(
          title: Text(''),
          backgroundColor: Colors.black45,
        ),
        //Hamburger Menu
        drawer: Drawer(

          child: Container(
            color: Colors.black45,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.black54,
                  ),
                  child: Text('Navigation',
                    style: TextStyle(
                      fontSize: 56,

                      color: Colors.black
                    ),

                  ),

                ),
                ListTile(
                  title: const Text('Movies', style: TextStyle(

                      color: Colors.white
                  ),),
                  onTap: () {
                    // Update the state of the app.

                  },
                ),
                ListTile(
                  title: const Text('Tv Shows', style: TextStyle(

                      color: Colors.white
                  ),),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),

                ListTile(
                  title: const Text('Add-Ons', style: TextStyle(

                      color: Colors.white
                  ),),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),

              ],

            ),
          ),
        ),
      ),
    );
  }


}
