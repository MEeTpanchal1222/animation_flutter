import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleDemo extends StatefulWidget {
  @override
  _AnimatedDefaultTextStyleDemoState createState() => _AnimatedDefaultTextStyleDemoState();
}

class _AnimatedDefaultTextStyleDemoState extends State<AnimatedDefaultTextStyleDemo> {
  bool _largeFont = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedDefaultTextStyle Demo'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _largeFont = !_largeFont;
            });
          },
          child: AnimatedDefaultTextStyle(
            style: _largeFont
                ? TextStyle(fontSize: 50, color: Colors.blue)
                : TextStyle(fontSize: 20, color: Colors.red),
            duration: const Duration(seconds: 1),
            child: Text('Tap me!'),
          ),
        ),
      ),
    );
  }
}
