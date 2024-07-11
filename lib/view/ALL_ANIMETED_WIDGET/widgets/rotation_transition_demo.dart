import 'package:flutter/material.dart';

class RotationTransitionDemo extends StatefulWidget {
  @override
  _RotationTransitionDemoState createState() => _RotationTransitionDemoState();
}

class _RotationTransitionDemoState extends State<RotationTransitionDemo> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: const Duration(seconds: 2), vsync: this)
      ..repeat(reverse: true);
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
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
        title: Text('RotationTransition Demo'),
      ),
      body: Center(
        child: RotationTransition(
          turns: _animation,
          child: FlutterLogo(size: 100),
        ),
      ),
    );
  }
}
