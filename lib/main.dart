// Step 1
import 'package:flutter/material.dart';

void main() {
// Giving command to runApp() to run the app.

/* The purpose of the runApp() function is to attach
the given widget to the screen. */
  runApp(StreamexApp());
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
