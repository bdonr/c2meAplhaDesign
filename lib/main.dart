import 'package:c2mealpha2/customWidgets/GlasContainer.dart';
import 'package:c2mealpha2/imageButton/ContentImage.dart';
import 'package:c2mealpha2/customWidgets/DescriptionRow.dart';
import 'package:c2mealpha2/customWidgets/description/CustomDescriptionSliver.dart';
import 'package:c2mealpha2/customWidgets/top/TopButtonDesign.dart';
import 'package:c2mealpha2/customWidgets/top/TopView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  List<Widget> list = [];

  list.add(GlasContainer(
      height: 100,
      width: 100,
      spread: 0,
      blur: 0,
      child: Text(
        "youtube",
        style: TextStyle(
            color: Colors.black87, fontSize: 13, fontWeight: FontWeight.bold),
      ),
      boxShadow: Colors.red));
  list.add(GlasContainer(
      height: 100,
      width: 100,
      spread: 0,
      blur: 0,
      child: Text(
        "tiktok",
        style: TextStyle(
            color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),
      ),
      boxShadow: Colors.black87));
  list.add(GlasContainer(
      height: 100,
      width: 100,
      spread: 0,
      blur: 0,
      child: Text(
        "twitter",
        style: TextStyle(
            color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),
      ),
      boxShadow: Colors.blue));
  list.add(GlasContainer(
      height: 100,
      width: 100,
      spread: 0,
      blur: 0,
      child: Text(
        "twitch",
        style: TextStyle(
            color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),
      ),
      boxShadow: Colors.deepPurple));
  list.add(GlasContainer(
      height: 100,
      width: 100,
      spread: 0,
      blur: 0,
      child: Text(
        "pinterest",
        style: TextStyle(
            color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),
      ),
      boxShadow: Colors.orange));
  list.add(GlasContainer(
      height: 100,
      width: 100,
      spread: 0,
      blur: 0,
      child: Text(
        "snapchat",
        style: TextStyle(
            color: Colors.black87, fontSize: 13, fontWeight: FontWeight.bold),
      ),
      boxShadow: Colors.yellowAccent));
  list.add(GlasContainer(
      height: 100,
      width: 100,
      spread: 0,
      blur: 0,
      child: Text(
        "instagram",
        style: TextStyle(
            color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),
      ),
      boxShadow: Colors.pink));
  list.add(GlasContainer(
      height: 100,
      width: 100,
      spread: 0,
      blur: 0,
      child: Text(
        "onlyfans",
        style: TextStyle(
            color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),
      ),
      boxShadow: Colors.deepOrange));

  runApp(MyApp(
    list: list,
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key, required this.list}) : super(key: key);
  final List<Widget> list;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      color: Colors.blue,
      localizationsDelegates: [
        DefaultMaterialLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
      ],
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          key: _scaffoldKey,
          body: CustomScrollView(
            slivers: [
              TopView(
                scaffoldKey: _scaffoldKey,
              ),
              ContentImage(),
              CustomDescriptionSliver(),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 100,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: list[index],
                      );
                    },
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  height: 200,
                  color: Colors.transparent,
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  height: 200,
                  color: Colors.blue,
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  height: 200,
                  color: Colors.yellow,
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  height: 200,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          drawer: Drawer(
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple.shade50,
                  ),
                  child: Text('Drawer Header'),
                ),
                Row(
                  children: [
                    Expanded(child: Icon(Icons.add)),
                    Expanded(
                      child: ListTile(
                        title: const Text('Public Mode'),
                        onTap: () {
                          _scaffoldKey.currentState?.closeDrawer();
                        },
                      ),
                    ),
                  ],
                ),
                ListTile(
                  title: const Text('Private Mode'),
                  onTap: () {
                    _scaffoldKey.currentState?.closeDrawer();
                  },
                ),
                ListTile(
                  title: const Text('Influencer Mode'),
                  onTap: () {
                    _scaffoldKey.currentState?.closeDrawer();
                  },
                ),
                Divider(
                  thickness: 1,
                ),
                ListTile(
                  title: const Text('Where Am I Privat'),
                  onTap: () {
                    _scaffoldKey.currentState?.closeDrawer();
                  },
                ),
                Divider(
                  thickness: 1,
                ),
                ListTile(
                  title: const Text('Who I met today'),
                  onTap: () {
                    _scaffoldKey.currentState?.closeDrawer();
                  },
                ),
                ListTile(
                  title: const Text('Who liked me today'),
                  onTap: () {
                    _scaffoldKey.currentState?.closeDrawer();
                  },
                ),
                ListTile(
                  title: const Text('IgnoreList'),
                  onTap: () {
                    _scaffoldKey.currentState?.closeDrawer();
                  },
                ),
                Divider(
                  thickness: 1,
                ),
                ListTile(
                  title: const Text('Edit my Socials'),
                  onTap: () {
                    _scaffoldKey.currentState?.closeDrawer();
                  },
                ),
                ListTile(
                  title: const Text('Edit my Main Image'),
                  onTap: () {
                    _scaffoldKey.currentState?.closeDrawer();
                  },
                ),
                ListTile(
                  title: const Text('Edit Info'),
                  onTap: () {
                    _scaffoldKey.currentState?.closeDrawer();
                  },
                ),
                ListTile(
                  title: const Text('Edit Info'),
                  onTap: () {
                    _scaffoldKey.currentState?.closeDrawer();
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
