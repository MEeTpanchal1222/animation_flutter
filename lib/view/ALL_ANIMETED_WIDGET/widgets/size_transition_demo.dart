import 'package:flutter/material.dart';

class SizeTransitionDemo extends StatefulWidget {
  @override
  _SizeTransitionDemoState createState() => _SizeTransitionDemoState();
}

class _SizeTransitionDemoState extends State<SizeTransitionDemo> with SingleTickerProviderStateMixin {
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
        title: Text('SizeTransition Demo'),
      ),
      body: Center(
        child: SizeTransition(
          sizeFactor: _animation,
          child: FlutterLogo(size: 100),
        ),
      ),
    );
  }
}
