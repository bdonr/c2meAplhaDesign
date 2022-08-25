import 'package:c2mealpha2/ContentImage.dart';
import 'package:c2mealpha2/CustomText.dart';
import 'package:c2mealpha2/DescriptionRow.dart';
import 'package:c2mealpha2/customWidgets/description/CustomDescriptionSliver.dart';
import 'package:c2mealpha2/customWidgets/top/TopButtonDesign.dart';
import 'package:c2mealpha2/customWidgets/top/TopView.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Material(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: SafeArea(
          child: Scaffold(
            key: _scaffoldKey,
            backgroundColor: Colors.transparent,
            body: CustomScrollView(
              slivers: [
                TopView(scaffoldKey: _scaffoldKey,),
                ContentImage(),
                CustomDescriptionSliver(),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 100,
                    child: ListView.builder(
                      itemCount: 100,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 1)),
                            Container(
                                height: 100,
                                width: 100,
                                color: Colors.deepPurple[100 * (index % 9)]),
                          ],
                        );
                      },
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    height: 200,
                    color: Colors.red,
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
                  Divider(thickness: 1,),
                  ListTile(
                    title: const Text('Where Am I Privat'),
                    onTap: () {
                      _scaffoldKey.currentState?.closeDrawer();
                    },
                  ),
                  Divider(thickness: 1,),
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
                  Divider(thickness: 1,),
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
      ),
    );
  }
}
