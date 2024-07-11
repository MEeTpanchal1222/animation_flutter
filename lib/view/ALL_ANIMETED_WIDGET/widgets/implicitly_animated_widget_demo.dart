import 'package:flutter/material.dart';

class ImplicitlyAnimatedWidgetDemo extends StatefulWidget {
  @override
  _ImplicitlyAnimatedWidgetDemoState createState() => _ImplicitlyAnimatedWidgetDemoState();
}

class _ImplicitlyAnimatedWidgetDemoState extends State<ImplicitlyAnimatedWidgetDemo> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ImplicitlyAnimatedWidget Demo'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _selected = !_selected;
            });
          },
          child: AnimatedContainer(
            width: _selected ? 200 : 100,
            height: _selected ? 100 : 200,
            color: _selected ? Colors.blue : Colors.red,
            alignment: _selected ? Alignment.center : AlignmentDirectional.topCenter,
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            child: const FlutterLogo(size: 75),
          ),
        ),
      ),
    );
  }
}
