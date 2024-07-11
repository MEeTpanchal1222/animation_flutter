// import 'package:flutter/material.dart';
//
// class TweenAnimationBuilderDemo extends StatefulWidget {
//   @override
//   _TweenAnimationBuilderDemoState createState() => _TweenAnimationBuilderDemoState();
// }
//
// class _TweenAnimationBuilderDemoState extends State<TweenAnimationBuilderDemo> {
//   bool _selected = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('TweenAnimationBuilder Demo'),
//       ),
//       body: Center(
//         child: GestureDetector(
//           onTap: () {
//             setState(() {
//               _selected = !_selected;
//             });
//           },
//           child: TweenAnimationBuilder(
//             tween: ColorTween(begin: Colors.red, end: _selected ? Colors.blue : Colors.green),
//             duration: const Duration(seconds: 1),
//             builder: (BuildContext context, Color color, Widget child) {
//               return AnimatedAlign(
//                 alignment: Alignment(., y),
//                 child: ColorFiltered(
//                   colorFilter: ColorFilter.mode(color, BlendMode.modulate),
//                   child: FlutterLogo(size: 100),
//                 ),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
