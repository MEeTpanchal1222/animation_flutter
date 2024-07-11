import 'package:flutter/material.dart';

class AnimatedPaddingDemo extends StatefulWidget {
  @override
  _AnimatedPaddingDemoState createState() => _AnimatedPaddingDemoState();
}

class _AnimatedPaddingDemoState extends State<AnimatedPaddingDemo> {
  double _padding = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedPadding Demo'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _padding = _padding == 10.0 ? 100.0 : 10.0;
            });
          },
          child: AnimatedPadding(
            padding: EdgeInsets.all(_padding),
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
            child: Container(
              color: Colors.blue,
              child: const FlutterLogo(size: 100),
            ),
          ),
        ),
      ),
    );
  }
}
