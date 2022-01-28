import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import 'item_selector.dart';

void main() {
  /// Comment or uncomment to run both examples
  runApp(
    // WithBuilder(),
    MaterialApp(
      title: 'Gemsouls',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        splashColor: Colors.transparent,
        fontFamily: 'Montserrat',
        primarySwatch: Colors.pink,
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
      ),
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sad'),
      ),
      body: Column(
        children: [
          Center(
            child: IconButton(
              icon: Icon(Icons.ac_unit_sharp),
              onPressed: () {
                ItemSelector.selectItem(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
