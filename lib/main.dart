// Step 1
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';
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
            title: Text(''),
            backgroundColor: Colors.greenAccent,
          ),
          //Hamburger Menu
          drawer: Drawer(

            child: Container(
              color: Colors.black45,
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                    DrawerHeader(
                    decoration: const BoxDecoration(
                      color: Colors.black54,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 220, bottom: 100),
                      child: IconButton(iconSize: 30,
                        splashRadius: 20,
                        //padding: EdgeInsets.only(right: 260, bottom: 240),
                        icon:  const Icon(Icons.account_box_outlined), onPressed: () {


                        },

                      ),
                    )

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

                  ListTile(
                    shape: Border.all(color: Colors.white70, width: 5.0),
                    title: const Text('Skins', style: TextStyle(

                        color: Colors.white
                    ),),
                    onTap: () {
                      // Update the state of the app.

                    },
                  ),
                  ListTile(
                    shape: Border.all(color: Colors.white, width: 5.0),
                    title: const Text('Profile', style: TextStyle(

                        color: Colors.white
                    ),),
                    onTap: () {
                      // Update the state of the app.

                    },
                  ),

                ],

              ),
            ),
          ),
        ),
      ),
    );
  }


}
