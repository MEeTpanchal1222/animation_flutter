import 'package:flutter/material.dart';

class AnimatedSizeDemo extends StatefulWidget {
  @override
  _AnimatedSizeDemoState createState() => _AnimatedSizeDemoState();
}

class _AnimatedSizeDemoState extends State<AnimatedSizeDemo> with SingleTickerProviderStateMixin {
  bool _large = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedSize Demo'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _large = !_large;
            });
          },
          child: AnimatedSize(
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
            child: Container(
              width: _large ? 200 : 100,
              height: _large ? 200 : 100,
              color: Colors.blue,
              child: const FlutterLogo(size: 75),
            ),
          ),
        ),
      ),
    );
  }
}
