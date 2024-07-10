import 'package:flutter/material.dart';
import '../detail_screen/detail_screen.dart';

class MainScreen extends StatelessWidget {
  final List<Task> tasks = [
    Task(name: 'Custom', taskCount: 8, progress: 88),
    Task(name: 'Personal', taskCount: 5, progress: 50),
    Task(name: 'Work', taskCount: 10, progress: 20),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        leading: Icon(Icons.menu_open_sharp,size: 40,color: Colors.white,),
        backgroundColor: Colors.redAccent,
        title: Text('TODO',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search,color: Colors.white,size: 40,),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Hello, John.\nThis is a daily quote. You have 10 tasks to do today.',
              style: TextStyle(fontSize: 18),
            ),
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 400,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              initialPage: 0,
            ),
            items: tasks.map((task) {
              return Builder(
                builder: (BuildContext context) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(task: task),
                        ),
                      );
                    },
                    child: Hero(
                      tag: task.name,
                      child: TaskCard(task: task),
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

class Task {
  final String name;
  final int taskCount;
  final int progress;

  Task({required this.name, required this.taskCount, required this.progress});
}

class TaskCard extends StatelessWidget {
  final Task task;

  TaskCard({required this.task});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
    );
  }
}
