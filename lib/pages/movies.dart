

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movieapp/pages/sidebar.dart';
import 'package:movieapp/streamexapi/text/stext.dart';

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


                drawer: const SideBarPage(),
                body: Stack(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 300, left: 60),
                      child: StreamxText(text: 'Add Movie folder to See Them Here', color: Colors.black87,),
                    ),

                      Padding(
                        padding: const EdgeInsets.only(top: 360, left: 165),
                        child: IconButton(iconSize: 30,
                        splashRadius: 20,
                        //padding: EdgeInsets.only(right: 260, bottom: 240),
                        icon:  const Icon(Icons.playlist_add_sharp), onPressed: () {


                        },

                    ),
                      ),
                  ]
                ),

        appBar: AppBar(
          title: const Text(''),
          backgroundColor: Colors.greenAccent,
              )

          ),
        )

    )
    );

  }
}
