

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movieapp/pages/sidebar.dart';

class MoviePage extends StatefulWidget{
  const MoviePage({ super.key });

  @override
  State<MoviePage> createState() => _MoviePage();

}

class _MoviePage extends State<MoviePage>{

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
