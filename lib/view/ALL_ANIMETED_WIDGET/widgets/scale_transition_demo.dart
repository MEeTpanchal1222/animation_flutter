import 'package:flutter/material.dart';

class ScaleTransitionDemo extends StatefulWidget {
  @override
  _ScaleTransitionDemoState createState() => _ScaleTransitionDemoState();
}

class _ScaleTransitionDemoState extends State<ScaleTransitionDemo> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: const Duration(seconds: 2), vsync: this)
      ..repeat(reverse: true);
    _animation = Tween(begin: 0.5, end: 1.5).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScaleTransition Demo'),
      ),
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: FlutterLogo(size: 100),
        ),
      ),
    );
  }
}
