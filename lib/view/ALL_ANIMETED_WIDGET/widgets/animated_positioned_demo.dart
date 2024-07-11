import 'package:flutter/material.dart';

class AnimatedPositionedDemo extends StatefulWidget {
  @override
  _AnimatedPositionedDemoState createState() => _AnimatedPositionedDemoState();
}

class _AnimatedPositionedDemoState extends State<AnimatedPositionedDemo> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedPositioned Demo'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _selected = !_selected;
            });
          },
          child: Stack(
            children: [
              AnimatedPositioned(
                width: _selected ? 200.0 : 100.0,
                height: _selected ? 100.0 : 200.0,
                top: _selected ? 50.0 : 150.0,
                duration: Duration(seconds: 2),
                curve: Curves.fastOutSlowIn,
                child: Container(color: Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
