// import 'package:flutter/material.dart';
//
// import '../home_screen/home_screen.dart';
//
// class DetailScreen extends StatelessWidget {
//   final Task task;
//
//   DetailScreen({required this.task});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(task.name),
//         actions: [
//
//         ],
//       ),
//       body: Center(
//         child: Hero(
//           tag: task.name,
//           child: TaskCard(task: task),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import '../home_screen/home_screen.dart';

class DetailScreen extends StatelessWidget {
  final Task task;

  DetailScreen({required this.task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(task.name, style: TextStyle(color: Colors.white)),
        actions: [  Hero(
          tag: task.progress,
          child:
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Icon(Icons.menu_open_outlined, color: Colors.white, size: 38),
             ),

        ),],
      ),
      body: Center(
        child: Hero(
          tag: task.name,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(18, 30, 18, 200),
            child: Card(
              margin: EdgeInsets.all(16),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(40),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.timer_sharp, color: Colors.redAccent, size: 38),
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      '${task.taskCount} Tasks',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      task.name,
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    LinearProgressIndicator(
                      value: task.progress / 100,
                      backgroundColor: Colors.grey[200],
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                    ),
                    SizedBox(height: 5),
                    Text('${task.progress}%'),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
