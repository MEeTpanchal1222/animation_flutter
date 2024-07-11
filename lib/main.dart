import 'package:animation_flutter/view/ALL_ANIMETED_WIDGET/home_screen.dart';
import 'package:animation_flutter/view/drag_game/home_screen/home_screen.dart';
import 'package:animation_flutter/view/hero_widget/home_screen/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Matching Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen()
      //MatchingGame(),
    );
  }
}

