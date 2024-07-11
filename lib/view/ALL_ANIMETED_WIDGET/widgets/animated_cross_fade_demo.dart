import 'package:flutter/material.dart';

class AnimatedCrossFadeDemo extends StatefulWidget {
  @override
  _AnimatedCrossFadeDemoState createState() => _AnimatedCrossFadeDemoState();
}

class _AnimatedCrossFadeDemoState extends State<AnimatedCrossFadeDemo> {
  bool _showFirst = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedCrossFade Demo'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _showFirst = !_showFirst;
            });
          },
          child: AnimatedCrossFade(
            firstChild: Container(
              width: 200.0,
              height: 200.0,
              color: Colors.blue,
              child: Center(child: Text('First')),
            ),
            secondChild: Container(
              width: 200.0,
              height: 200.0,
              color: Colors.red,
              child: Center(child: Text('Second')),
            ),
            crossFadeState: _showFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: Duration(seconds: 1),
          ),
        ),
      ),
    );
  }
}
