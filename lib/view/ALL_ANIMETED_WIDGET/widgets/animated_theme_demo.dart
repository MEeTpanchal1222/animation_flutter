import 'package:flutter/material.dart';

class AnimatedThemeDemo extends StatefulWidget {
  @override
  _AnimatedThemeDemoState createState() => _AnimatedThemeDemoState();
}

class _AnimatedThemeDemoState extends State<AnimatedThemeDemo> {
  bool _isDark = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedTheme(
      data: _isDark ? ThemeData.dark() : ThemeData.light(),
      duration: const Duration(seconds: 1),
      child: Scaffold(
        appBar: AppBar(
          title: Text('AnimatedTheme Demo'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                _isDark = !_isDark;
              });
            },
            child: Text('Toggle Theme'),
          ),
        ),
      ),
    );
  }
}
