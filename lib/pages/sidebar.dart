import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movieapp/pages/movies.dart';
import 'package:movieapp/pages/profile.dart';
import 'package:movieapp/pages/skinspage.dart';
import 'package:movieapp/pages/tvshows.dart';

import 'addonspage.dart';
class SideBarPage extends StatefulWidget{
  const SideBarPage({ super.key });
  @override
  State<SideBarPage> createState() => _SideBarPage();
}
class _SideBarPage extends State<SideBarPage>{
  @override
  Widget build(BuildContext context) {
    return Shortcuts(
        shortcuts: <LogicalKeySet, Intent>{
          LogicalKeySet(LogicalKeyboardKey.select): const ActivateIntent(),
        },
        child: Drawer(

          child: Container(
            color: Colors.black45,
            child: Builder(
                builder: (context) {
                  return ListView(
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const MoviePage()));

                        },
                      ),
                      ListTile(
                        title: const Text('Tv Shows', style: TextStyle(

                            color: Colors.white
                        ),),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const TvShows()));
                        },
                      ),

                      ListTile(
                        title: const Text('Add-Ons', style: TextStyle(

                            color: Colors.white
                        ),),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const AddOnPage()));
                        },
                      ),

                      ListTile(
                        shape: Border.all(color: Colors.white70, width: 5.0),
                        title: const Text('Skins', style: TextStyle(

                            color: Colors.white
                        ),),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const SkinsPage()));
                        },
                      ),
                      ListTile(
                        shape: Border.all(color: Colors.white, width: 5.0),
                        title: const Text('Profile', style: TextStyle(

                            color: Colors.white
                        ),),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const ProfilePage()));

                        },
                      ),

                    ],

                  );
                }
            ),
          ),
        ),
    );
  }
}