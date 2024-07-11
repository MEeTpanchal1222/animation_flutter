import 'package:flutter/material.dart';

class SlideTransitionDemo extends StatefulWidget {
  @override
  _SlideTransitionDemoState createState() => _SlideTransitionDemoState();
}

class _SlideTransitionDemoState extends State<SlideTransitionDemo> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: const Duration(seconds: 2), vsync: this)
      ..repeat(reverse: true);
    _animation = Tween(begin: Offset(-1.0, 0.0), end: Offset(1.0, 0.0)).animate(_controller);
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
        title: Text('SlideTransition Demo'),
      ),
      body: Center(
        child: SlideTransition(
          position: _animation,
          child: FlutterLogo(size: 100),
        ),
      ),
    );
  }
}
