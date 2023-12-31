import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movieapp/pages/sidebar.dart';

class TvShows extends StatefulWidget{
  const TvShows({ super.key });

  @override
  State<TvShows> createState() => _TvShows();

}

class _TvShows extends State<TvShows>{

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
                    title: const Text(''),
                    backgroundColor: Colors.greenAccent,
                  )

              ),
            )
        )

    );

  }
}
