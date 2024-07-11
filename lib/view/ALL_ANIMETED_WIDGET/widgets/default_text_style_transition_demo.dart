import 'package:flutter/material.dart';

class DefaultTextStyleTransitionDemo extends StatefulWidget {
  @override
  _DefaultTextStyleTransitionDemoState createState() => _DefaultTextStyleTransitionDemoState();
}

class _DefaultTextStyleTransitionDemoState extends State<DefaultTextStyleTransitionDemo> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<TextStyle> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _animation = TextStyleTween(
      begin: TextStyle(fontSize: 20, color: Colors.blue),
      end: TextStyle(fontSize: 40, color: Colors.red),
    ).animate(_controller);
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
        title: Text('DefaultTextStyleTransition Demo'),
      ),
      body: Center(
        child: DefaultTextStyleTransition(
          style: _animation,
          child: Text('Animating Text Style'),
        ),
      ),
    );
  }
}
