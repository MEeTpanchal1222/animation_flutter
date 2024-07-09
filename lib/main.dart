// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MaterialApp(
//     home: HomeScreen(),
//   ));
// }
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   List<String> frontImages = [
//     'assets/animals/bird_front.png',
//     'assets/animals/dog_front.png',
//     'assets/animals/got_front.png',
//     'assets/animals/jely_front.png',
//   ];
//
//   List<String> backImages = [
//     'assets/animals/bird_back.png',
//     'assets/animals/dog_back.png',
//     'assets/animals/got_back.png',
//     'assets/animals/jely_back.png',
//   ];
//
//   Map<String, bool> cardVisibility = {};
//
//   @override
//   void initState() {
//     super.initState();
//     _initializeCards();
//   }
//
//   void _initializeCards() {
//     for (int i = 0; i < frontImages.length; i++) {
//       cardVisibility[frontImages[i]] = true;
//       cardVisibility[backImages[i]] = true;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Match Game'),
//       ),
//       body: Center(
//         child: GridView.builder(
//           itemCount: frontImages.length,
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             childAspectRatio: 1.0,
//           ),
//           itemBuilder: (context, index) {
//             String frontImage = frontImages[index];
//             String backImage = backImages[index];
//             bool isVisible = cardVisibility[frontImage]!;
//
//             return Draggable<String>(
//               data: frontImage,
//               child: Container(
//                 margin: EdgeInsets.all(10),
//                 decoration: BoxDecoration(
//                   color: Colors.teal,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: isVisible ? Image.asset(frontImage) : null,
//               ),
//               feedback: Container(
//                 margin: EdgeInsets.all(10),
//                 decoration: BoxDecoration(
//                   color: Colors.redAccent,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: SizedBox(
//                   child: Container(
//                     width: 150,
//                     child: Row(
//                       children: [
//                         Image.asset(frontImage),
//                         Image.asset(backImage),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               childWhenDragging: Container(),
//               onDragCompleted: () {
//                 setState(() {
//                   cardVisibility[frontImage] = true;
//                 });
//               },
//             );
//           },
//         ),
//       ),
//     );
//   }
// }





















// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MaterialApp(
//     home: HomeScreen(),
//   ));
// }
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   List<String> frontImages = [
//     'assets/animals/bird_front.png',
//     'assets/animals/dog_front.png',
//     'assets/animals/got_front.png',
//     'assets/animals/jely_front.png',
//   ];
//
//   List<String> backImages = [
//     'assets/animals/bird_back.png',
//     'assets/animals/dog_back.png',
//     'assets/animals/got_back.png',
//     'assets/animals/jely_back.png',
//   ];
//
//   List<bool> matched = [false, false, false, false];
//
//   String? draggingItem;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Match Game'),
//       ),
//       body: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: <Widget>[
//           _buildColumn(frontImages, isFront: true),
//           _buildColumn(backImages, isFront: false),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildColumn(List<String> images, {required bool isFront}) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: List.generate(images.length, (index) {
//         String imagePath = images[index];
//         bool isMatched = matched[index];
//
//         return DragTarget<String>(
//           onWillAccept: (data) => !isMatched && data == imagePath,
//           onAccept: (data) {
//             setState(() {
//               draggingItem = null;
//               matched[index] = true;
//             });
//           },
//           builder: (context, candidateData, rejectedData) {
//             return Draggable<String>(
//               data: imagePath,
//               feedback: Container(
//                 width: 100,
//                 height: 100,
//                 decoration: BoxDecoration(
//                   color: Colors.transparent,
//                   borderRadius: BorderRadius.circular(10),
//                   border: Border.all(color: Colors.redAccent, width: 2),
//                 ),
//                 child: isFront ? Image.asset(imagePath) : null,
//               ),
//               child: Container(
//                 width: 100,
//                 height: 100,
//                 margin: EdgeInsets.all(10),
//                 decoration: BoxDecoration(
//                   color: Colors.teal,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: isFront && !matched[index] ? Image.asset(imagePath) : null,
//               ),
//               childWhenDragging: Container(
//                 width: 100,
//                 height: 100,
//                 margin: EdgeInsets.all(10),
//                 decoration: BoxDecoration(
//                   color: Colors.grey[300],
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//             );
//           },
//         );
//       }),
//     );
//   }
// }
//




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
import 'package:animation_flutter/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(
    home: ChangeNotifierProvider(
      create: (context) => DragDropModel(),
      child: HomeScreen(),
    ),
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Draggable and DragTarget with Provider')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            DraggableBox(),
            DragTargetBox(),
          ],
        ),
      ),
    );
  }
}

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











