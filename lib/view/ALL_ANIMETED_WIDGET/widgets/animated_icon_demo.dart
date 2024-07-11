import 'package:flutter/material.dart';

class AnimatedIconDemo extends StatefulWidget {
  @override
  _AnimatedIconDemoState createState() => _AnimatedIconDemoState();
}

class _AnimatedIconDemoState extends State<AnimatedIconDemo> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
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
        title: Text('AnimatedIcon Demo'),
      ),
      body: Center(
        child: IconButton(
          iconSize: 100,
          icon: AnimatedIcon(
            icon: AnimatedIcons.play_pause,
            progress: _controller,
          ),
          onPressed: () {
            setState(() {
              _controller.isCompleted ? _controller.reverse() : _controller.forward();
            });
          },
        ),
      ),
    );
  }
}
