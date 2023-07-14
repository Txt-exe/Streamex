// Step 1
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';
import 'package:movieapp/pages/sidebar.dart';
import 'package:movieapp/streamexapi/text/stext.dart';
import 'streamexapi/skins/sskins.dart';
import 'package:movieapp/utils/utils/createfolder.dart';
import 'package:movieapp/skins/default/defaultskin.dart';
Logger newlog = Logger();

void main() {
// Giving command to runApp() to run the app.

/* The purpose of the runApp() function is to attach
the given widget to the screen. */
  runApp(const StreamexApp());
  AppUtil.createInitFolder();
MyNewSkin.activateSkin();
}

class StreamexApp extends StatefulWidget{
  const StreamexApp({ super.key });

  @override
  State<StreamexApp> createState() => _StreamexAppState();

  }

class _StreamexAppState extends State<StreamexApp>{

  @override
  Widget build(BuildContext context) {

    return Shortcuts(
      shortcuts: <LogicalKeySet, Intent>{

        LogicalKeySet(LogicalKeyboardKey.select): const ActivateIntent(),

      },

      child: MaterialApp(
        home: Scaffold(
        backgroundColor: Skins.background_color,
          appBar: AppBar(
            title: const Text(''),
            backgroundColor: Colors.greenAccent,
          ),
          //Hamburger Menu
          drawer: const SideBarPage(),
          body: Container(
            color: Colors.black45,
            child: Builder(
              builder: (context) {
                return Container(


                );
              }
            ),
          ),
        ),
      ),
    );
  }


}
