import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movieapp/pages/sidebar.dart';

class AddOnPage extends StatefulWidget{
  const AddOnPage({ super.key });

  @override
  State<AddOnPage> createState() => _AddOnPage();

}

class _AddOnPage extends State<AddOnPage>{

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
