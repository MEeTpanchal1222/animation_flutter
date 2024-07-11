import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedWidgetDemo extends StatefulWidget {
  @override
  _AnimatedWidgetDemoState createState() => _AnimatedWidgetDemoState();
}

class _AnimatedWidgetDemoState extends State<AnimatedWidgetDemo> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);
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
        title: Text('AnimatedWidget Demo'),
      ),
      body: Center(
        child: _AnimatedLogo(animation: _controller,),
      ),
    );
  }
}

class _AnimatedLogo extends AnimatedWidget {
  _AnimatedLogo({ required Animation<double> animation})
      : super( listenable: animation);

  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return Transform.rotate(
      angle: animation.value * 2.0 * 3.141592653589793,
      child: FlutterLogo(size: 100),
    );
  }
}
