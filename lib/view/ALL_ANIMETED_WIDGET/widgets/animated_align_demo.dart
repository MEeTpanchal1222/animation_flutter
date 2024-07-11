import 'package:flutter/material.dart';

class AnimatedAlignDemo extends StatefulWidget {
  @override
  _AnimatedAlignDemoState createState() => _AnimatedAlignDemoState();
}

class _AnimatedAlignDemoState extends State<AnimatedAlignDemo> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedAlign Demo'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _selected = !_selected;
            });
          },
          child: Container(
            height: 200.0,
            width: 200.0,
            color: Colors.blue.withOpacity(0.5),
            child: AnimatedAlign(
              alignment: _selected ? Alignment.topRight : Alignment.bottomLeft,
              duration: Duration(seconds: 2),
              curve: Curves.easeInOut,
              child: FlutterLogo(size: 50),
            ),
          ),
        ),
      ),
    );
  }
}
