import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movieapp/pages/sidebar.dart';

class ProfilePage extends StatefulWidget{
  const ProfilePage({ super.key });

  @override
  State<ProfilePage> createState() => _ProfilePage();

}

class _ProfilePage extends State<ProfilePage>{

  @override
  Widget build(BuildContext context) {

    return Shortcuts(
        shortcuts: <LogicalKeySet, Intent>{

          LogicalKeySet(LogicalKeyboardKey.select): const ActivateIntent(),

        },

        child: MaterialApp(

            home: Builder(
              builder: (context) => Scaffold(


                  drawer: SideBarPage(),
                  body: Container(
                    color: Colors.blueAccent,


                  ),

                  appBar: AppBar(
                    title: Text(''),
                    backgroundColor: Colors.greenAccent,
                  )

              ),
            )
        )

    );

  }
}
