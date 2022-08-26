// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:c2mealpha2/main.dart';

void main() {
  List<Widget> list = [];

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
      child:  Align(
          alignment: Alignment.center,child:Text(
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
      child:  Align(
          alignment: Alignment.center,child:Text(
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
          alignment: Alignment.center,child:Text(
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
      child:Align(
          alignment: Alignment.center,child: Text(
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
          alignment: Alignment.center,child:Text(
        "snapchat",
        style: TextStyle(
            color: Colors.black87, fontSize: 13, fontWeight: FontWeight.bold),
      )),
      boxShadow: Colors.yellowAccent));
  list.add(GlasContainer(
      height: 100,
      width: 100,
      spread: 0,
      blur: 0,
      child: Align(
          alignment: Alignment.center,child:Text(
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
          alignment: Alignment.center,child:Text(
        "onlyfans",
        style: TextStyle(
            color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),
      )),
      boxShadow: Colors.deepOrange));
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp(list: list,));

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
