import 'package:flutter/material.dart';

class DecoratedBoxTransitionDemo extends StatefulWidget {
  @override
  _DecoratedBoxTransitionDemoState createState() => _DecoratedBoxTransitionDemoState();
}

class _DecoratedBoxTransitionDemoState extends State<DecoratedBoxTransitionDemo> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Decoration> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _animation = DecorationTween(
      begin: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(50),
      ),
      end: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(0),
      ),
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
        title: Text('DecoratedBoxTransition Demo'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _controller.isCompleted ? _controller.reverse() : _controller.forward();
            });
          },
          child: DecoratedBoxTransition(
            decoration: _animation,
            child: Container(
              width: 100,
              height: 100,
              child: const Center(child: Text('Tap me')),
            ),
          ),
        ),
      ),
    );
  }
}
