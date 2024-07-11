import 'package:flutter/material.dart';

class HeroDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Demo'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => HeroDetailScreen()),
            );
          },
          child: Hero(
            tag: 'hero-logo',
            child: FlutterLogo(size: 100),
          ),
        ),
      ),
    );
  }
}

class HeroDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Detail Screen'),
      ),
      body: Center(
        child: Hero(
          tag: 'hero-logo',
          child: FlutterLogo(size: 300),
        ),
      ),
    );
  }
}
