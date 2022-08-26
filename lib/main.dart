import 'package:c2mealpha2/customWidgets/CustomText.dart';
import 'package:c2mealpha2/customWidgets/GlasContainer.dart';
import 'package:c2mealpha2/customWidgets/StoryTile.dart';
import 'package:c2mealpha2/imageButton/ContentImage.dart';
import 'package:c2mealpha2/customWidgets/DescriptionRow.dart';
import 'package:c2mealpha2/customWidgets/description/CustomDescriptionSliver.dart';
import 'package:c2mealpha2/customWidgets/top/TopButtonDesign.dart';
import 'package:c2mealpha2/customWidgets/top/TopView.dart';
import 'package:c2mealpha2/view/EditPage.dart';
import 'package:c2mealpha2/view/IgnoreListPage.dart';
import 'package:c2mealpha2/view/Profile.dart';
import 'package:c2mealpha2/view/StoryPage.dart';
import 'package:c2mealpha2/view/WhoIMetPage.dart';
import 'package:c2mealpha2/view/WhoLikesMePage.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  List<Widget> list = [];
  List<Widget> stories = [];
  list.add(GlasContainer(
      height: 100,
      width: 100,
      spread: 0,
      blur: 0,
      child: Align(
        alignment: Alignment.center,
        child: Text(
          "youtube",
          style: TextStyle(
              color: Colors.black87, fontSize: 13, fontWeight: FontWeight.bold),
        ),
      ),
      boxShadow: Colors.red));
  list.add(GlasContainer(
      height: 100,
      width: 100,
      spread: 0,
      blur: 0,
      child: Align(
          alignment: Alignment.center,
          child: Text(
            "tiktok",
            style: TextStyle(
                color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),
          )),
      boxShadow: Colors.black87));
  list.add(GlasContainer(
      height: 100,
      width: 100,
      spread: 0,
      blur: 0,
      child: Align(
          alignment: Alignment.center,
          child: Text(
            "twitter",
            style: TextStyle(
                color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),
          )),
      boxShadow: Colors.blue));
  list.add(GlasContainer(
      height: 100,
      width: 100,
      spread: 0,
      blur: 0,
      child: Align(
          alignment: Alignment.center,
          child: Text(
            "twitch",
            style: TextStyle(
                color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),
          )),
      boxShadow: Colors.deepPurple));
  list.add(GlasContainer(
      height: 100,
      width: 100,
      spread: 0,
      blur: 0,
      child: Align(
          alignment: Alignment.center,
          child: Text(
            "pinterest",
            style: TextStyle(
                color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),
          )),
      boxShadow: Colors.orange));
  list.add(GlasContainer(
      height: 100,
      width: 100,
      spread: 0,
      blur: 0,
      child: Align(
          alignment: Alignment.center,
          child: Text(
            "snapchat",
            style: TextStyle(
                color: Colors.black87,
                fontSize: 13,
                fontWeight: FontWeight.bold),
          )),
      boxShadow: Colors.yellowAccent));
  list.add(GlasContainer(
      height: 100,
      width: 100,
      spread: 0,
      blur: 0,
      child: Align(
          alignment: Alignment.center,
          child: Text(
            "instagram",
            style: TextStyle(
                color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),
          )),
      boxShadow: Colors.pink));
  list.add(GlasContainer(
      height: 100,
      width: 100,
      spread: 0,
      blur: 0,
      child: Align(
          alignment: Alignment.center,
          child: Text(
            "onlyfans",
            style: TextStyle(
                color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),
          )),
      boxShadow: Colors.deepOrange));

  stories.add(ListTile(
    leading: GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {},
      child: Container(
        width: 48,
        height: 48,
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        alignment: Alignment.center,
        child: const CircleAvatar(),
      ),
    ),
    title: const Text('title'),
    dense: false,
  ));

  runApp(MyApp(
    list: list,
    stories: stories,
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key, required this.list, required this.stories})
      : super(key: key);
  final List<Widget> list;
  final List<Widget> stories;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      routes: {
        '/profile': (BuildContext context) => Profile(),
        '/edit': (BuildContext context) => EditPage(),
        '/wholikesme': (BuildContext context) => WhoLikesMePage(),
        '/whoimet': (BuildContext context) => WhoIMetPage(),
        '/ignorelist': (BuildContext context) => IgnoreListPage(),
        '/story': (BuildContext context) => StoryPage(),
      },
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
              CustomDescriptionSliver(),
              SliverToBoxAdapter(
                child: CarouselSlider(
                  items: [
                    StoryTile(
                        title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis turpis odio, dapibus ac semper eget, tincidunt at quam. Sed tincidunt pretium feugiat. Nunc dolor",
                        followerCount: "12312",
                        messageCount: "1221"),
                    StoryTile(
                        title:  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis turpis odio, dapibus ac semper eget, tincidunt at quam. Sed tincidunt pretium feugiat. Nunc dolor",
                        imageUrl:
                            "https://images.unsplash.com/photo-1586407014176-b592d6e2d16b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=327&q=80%20327w,%20https://images.unsplash.com/photo-1586407014176-b592d6e2d16b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80%20627w,%20https://images.unsplash.com/photo-1586407014176-b592d6e2d16b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=654&q=80%20654w,%20https://images.unsplash.com/photo-1586407014176-b592d6e2d16b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=927&q=80%20927w,%20https://images.unsplash.com/photo-1586407014176-b592d6e2d16b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1227&q=80%201227w,%20https://images.unsplash.com/photo-1586407014176-b592d6e2d16b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1254&q=80%201254w,%20https://images.unsplash.com/photo-1586407014176-b592d6e2d16b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1527&q=80%201527w,%20https://images.unsplash.com/photo-1586407014176-b592d6e2d16b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1827&q=80%201827w,%20https://images.unsplash.com/photo-1586407014176-b592d6e2d16b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1854&q=80%201854w,%20https://images.unsplash.com/photo-1586407014176-b592d6e2d16b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2127&q=80%202127w,%20https://images.unsplash.com/photo-1586407014176-b592d6e2d16b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2160&q=80%202160w",
                        followerCount: "12312",
                        messageCount: "1221"),
                    StoryTile(
                      title: "What a day",
                      messageCount: "199",
                      followerCount: "1199",
                      imageUrl:
                          "https://images.unsplash.com/photo-1500622944204-b135684e99fd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1161&q=80%201161w,%20https://images.unsplash.com/photo-1500622944204-b135684e99fd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1461&q=80%201461w,%20https://images.unsplash.com/photo-1500622944204-b135684e99fd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1761&q=80%201761w,%20https://images.unsplash.com/photo-1500622944204-b135684e99fd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2061&q=80%202061w,%20https://images.unsplash.com/photo-1500622944204-b135684e99fd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2322&q=80%202322w,%20https://images.unsplash.com/photo-1500622944204-b135684e99fd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2361&q=80%202361w,%20https://images.unsplash.com/photo-1500622944204-b135684e99fd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2661&q=80%202661w,%20https://images.unsplash.com/photo-1500622944204-b135684e99fd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2922&q=80%202922w,%20https://images.unsplash.com/photo-1500622944204-b135684e99fd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2961&q=80%202961w,%20https://images.unsplash.com/photo-1500622944204-b135684e99fd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3169&q=80%203169w",
                    ),
                    StoryTile(
                        title: "me in hawaii",
                        imageUrl:
                            "https://images.unsplash.com/photo-1586407014176-b592d6e2d16b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=327&q=80%20327w,%20https://images.unsplash.com/photo-1586407014176-b592d6e2d16b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80%20627w,%20https://images.unsplash.com/photo-1586407014176-b592d6e2d16b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=654&q=80%20654w,%20https://images.unsplash.com/photo-1586407014176-b592d6e2d16b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=927&q=80%20927w,%20https://images.unsplash.com/photo-1586407014176-b592d6e2d16b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1227&q=80%201227w,%20https://images.unsplash.com/photo-1586407014176-b592d6e2d16b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1254&q=80%201254w,%20https://images.unsplash.com/photo-1586407014176-b592d6e2d16b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1527&q=80%201527w,%20https://images.unsplash.com/photo-1586407014176-b592d6e2d16b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1827&q=80%201827w,%20https://images.unsplash.com/photo-1586407014176-b592d6e2d16b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1854&q=80%201854w,%20https://images.unsplash.com/photo-1586407014176-b592d6e2d16b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2127&q=80%202127w,%20https://images.unsplash.com/photo-1586407014176-b592d6e2d16b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2160&q=80%202160w",
                        followerCount: "12312",
                        messageCount: "1221"),
                    StoryTile(
                        title: "hello",
                        imageUrl:
                            "https://images.unsplash.com/photo-1543877087-ebf71fde2be1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
                        followerCount: "12323",
                        messageCount: "122"),
                    StoryTile(
                      title: "my new dress",
                      messageCount: "1",
                      followerCount: "1231",
                      imageUrl:
                          "https://img.freepik.com/free-photo/smiling-beautiful-young-woman-pink-mini-dress-posing-studio_155003-14602.jpg?size=626&ext=jpg",
                    )
                  ]
                      .map((e) => Builder(
                            builder: (context) {
                              return e;
                            },
                          ))
                      .toList(),
                  options: CarouselOptions(height: 400),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  height: 200,
                  color: Colors.white,
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
            backgroundColor: Colors.transparent,
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: GlasContainer(
              height: double.infinity,
              width: 400,
              blur: 0,
              boxShadow: Colors.transparent,
              glassColor: Colors.white,
              opacity: 0.7,
              child: ListView(
                // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children: [
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
      ),
    );
  }
}
