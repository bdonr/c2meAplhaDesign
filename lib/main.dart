import 'package:c2mealpha2/ContentImage.dart';
import 'package:c2mealpha2/CustomText.dart';
import 'package:c2mealpha2/DescriptionRow.dart';
import 'package:c2mealpha2/customWidgets/description/CustomDescriptionSliver.dart';
import 'package:c2mealpha2/customWidgets/top/TopButtonDesign.dart';
import 'package:c2mealpha2/customWidgets/top/TopView.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
          child: CustomScrollView(
            slivers: [
              const TopView(),
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
        ),
      ),
    );
  }
}
