import 'package:flutter/material.dart';

class PositionedTransitionDemo extends StatefulWidget {
  @override
  _PositionedTransitionDemoState createState() => _PositionedTransitionDemoState();
}

class _PositionedTransitionDemoState extends State<PositionedTransitionDemo> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<RelativeRect> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _animation = RelativeRectTween(
      begin: RelativeRect.fromLTRB(100, 100, 200, 200),
      end: RelativeRect.fromLTRB(200, 200, 100, 100),
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
        title: Text('PositionedTransition Demo'),
      ),
      body: Stack(
        children: [
          PositionedTransition(
            rect: _animation,
            child: Container(
              color: Colors.blue,
              child: const Center(child: Text('Animating')),
            ),
          ),
        ],
      ),
    );
  }
}
