import 'package:flutter/material.dart';

class AnimatedModalBarrierDemo extends StatefulWidget {
  @override
  _AnimatedModalBarrierDemoState createState() => _AnimatedModalBarrierDemoState();
}

class _AnimatedModalBarrierDemoState extends State<AnimatedModalBarrierDemo> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedModalBarrier Demo'),
      ),
      body: Stack(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _isLoading = !_isLoading;
                });
              },
              child: Text(_isLoading ? 'Hide Barrier' : 'Show Barrier'),
            ),
          ),
          if (_isLoading)
            AnimatedModalBarrier(
              color: AlwaysStoppedAnimation<Color>(Colors.black.withOpacity(0.5)),
              dismissible: false,
            ),
        ],
      ),
    );
  }
}
