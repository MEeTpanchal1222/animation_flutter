import 'package:flutter/material.dart';

class AnimatedPhysicalModelDemo extends StatefulWidget {
  @override
  _AnimatedPhysicalModelDemoState createState() => _AnimatedPhysicalModelDemoState();
}

class _AnimatedPhysicalModelDemoState extends State<AnimatedPhysicalModelDemo> {
  bool _isFlat = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedPhysicalModel Demo'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _isFlat = !_isFlat;
            });
          },
          child: AnimatedPhysicalModel(
            shape: BoxShape.rectangle,
            elevation: _isFlat ? 0 : 6.0,
            color: Colors.white,
            shadowColor: Colors.black,
            duration: const Duration(seconds: 1),
            child: Container(
              height: 120.0,
              width: 120.0,
              color: Colors.blue,
              child: const FlutterLogo(size: 60),
            ),
          ),
        ),
      ),
    );
  }
}
