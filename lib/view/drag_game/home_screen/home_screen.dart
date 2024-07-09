import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Matching Game',
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
    '🍎': 'Apple',
    '🍌': 'Banana',
    '🍇': 'Grapes',
    '🍓': 'Strawberry',
  };

  int lives = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Matching Game'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Lives: $lives',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: data.keys.map((emoji) {
              return Draggable<String>(
                data: emoji,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Emoji(emoji: score[emoji] == true ? '✅' : emoji),
                ),
                feedback: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Emoji(emoji: emoji),
                ),
                childWhenDragging: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Emoji(emoji: '🙂'),
                ),
              );
            }).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: data.keys.map((emoji) => _buildDragTarget(emoji)).toList()
              ..shuffle(),
          ),
        ],
      ),
    );
  }

  Widget _buildDragTarget(String emoji) {
    return DragTarget<String>(
      builder: (context, incoming, rejected) {
        return Container(
           decoration: BoxDecoration(
               color: Colors.blue[200],
             borderRadius: BorderRadius.circular(18),
           ),
          height: 80,
          width: 100,
          child: Center(
            child: Text(
              data[emoji]!,
              style: TextStyle(fontSize: 18),
            ),
          ),
        );
      },
      onWillAccept: (data) => true,
      onAccept: (data) {
        setState(() {
          if (data == emoji) {
            score[emoji] = true;
          } else {
            lives -= 1;
            if (lives == 0) {
              _showGameOverDialog();
            }
          }
        });
      },
    );
  }

  void _showGameOverDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Game Over'),
          content: Text('You have no more lives left.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _resetGame();
              },
              child: Text('Restart'),
            ),
          ],
        );
      },
    );
  }

  void _resetGame() {
    setState(() {
      score.clear();
      lives = 5;
    });
  }
}

class Emoji extends StatelessWidget {
  final String emoji;

  Emoji({required this.emoji});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        alignment: Alignment.center,
        height: 80,
        padding: EdgeInsets.all(10),
        child: Text(
          emoji,
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}



















// simple example;
/*Color caughtColor = Colors.grey;

        Draggable<Color>(
          data: Colors.blue,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            child: Center(child: Text('Drag me')),
          ),
          feedback: Material(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue.withOpacity(0.5),
              child: Center(child: Text('Dragging')),
            ),
          ),
          childWhenDragging: Container(
            width: 100,
            height: 100,
            color: Colors.grey,
            child: Center(child: Text('Original')),
          ),
        ),
        DragTarget<Color>(
          onAccept: (data) {
            setState(() {
              caughtColor = data;
            });
          },
          builder: (context, candidateData, rejectedData) {
            return Container(
              width: 200,
              height: 200,
              color: caughtColor,
              child: Center(child: Text('Drop here')),
            );

*/







// using provider;
/*

          children: <Widget>[
            DraggableBox(),
            DragTargetBox(),
          ],


class DraggableBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<DragDropModel>(
      builder: (context, model, child) {
        return Draggable<Color>(
          data: Colors.blue,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            child: Center(child: Text('Drag me')),
          ),
          feedback: Material(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue.withOpacity(0.5),
              child: Center(child: Text('Dragging')),
            ),
          ),
          childWhenDragging: Container(
            width: 100,
            height: 100,
            color: Colors.grey,
            child: Center(child: Text('Original')),
          ),
        );
      },
    );
  }
}

class DragTargetBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<DragDropModel>(
      builder: (context, model, child) {
        return DragTarget<Color>(
          onAccept: (data) {
            model.updateTargetColor(data);
          },
          builder: (context, candidateData, rejectedData) {
            return Container(
              width: 200,
              height: 200,
              color: model.targetColor,
              child: Center(child: Text('Drop here')),
            );
          },
        );
      },
    );
  }
}
*/










