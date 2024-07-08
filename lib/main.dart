import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Half Image Matching Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MatchingGame(),
    );
  }
}

class MatchingGame extends StatefulWidget {
  @override
  _MatchingGameState createState() => _MatchingGameState();
}

class _MatchingGameState extends State<MatchingGame> {
  final Map<String, bool> score = {};
  final Map<String, String> data = {
    'assets/cat_left.png': 'assets/cat_right.png',
    'assets/dog_left.png': 'assets/dog_right.png',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Half Image Matching Game'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: data.keys.map((image) {
              return Draggable<String>(
                data: image,
                child: ImageContainer(image: score[image] == true ? 'assets/check.png' : image),
                feedback: ImageContainer(image: image),
                childWhenDragging: ImageContainer(image: 'assets/placeholder.png'),
              );
            }).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: data.values.map((image) => _buildDragTarget(image)).toList()
              ..shuffle(),
          ),
        ],
      ),
    );
  }

  Widget _buildDragTarget(String image) {
    return DragTarget<String>(
      builder: (context, incoming, rejected) {
        return Container(
          color: Colors.blue[200],
          height: 80,
          width: 80,
          child: Center(
            child: Image.asset(image, height: 50, width: 50),
          ),
        );
      },
      onWillAccept: (data) => data != null && data == image.replaceFirst('_right', '_left'),
      onAccept: (data) {
        setState(() {
          score[data] = true;
        });
      },
    );
  }
}

class ImageContainer extends StatelessWidget {
  final String image;

  ImageContainer({required this.image});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        alignment: Alignment.center,
        height: 80,
        padding: EdgeInsets.all(10),
        child: Image.asset(image, height: 50, width: 50),
      ),
    );
  }
}
