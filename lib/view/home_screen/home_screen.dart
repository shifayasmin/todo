import 'package:flutter/material.dart';
import 'package:todo/util/todo_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen>{

  List toDoList=[
    ["Do Meditation",false],
    ["Schedule Meeting",false],
  ];

  void checkBoxChanged(bool? value, int index){
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('To Do'),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return TodoTile(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            );
        },
      ),
          // TodoTile(
          //   taskName: "Do meditation",
          //   taskCompleted: true,
          //   onChanged: (p0) {},
          // ),
          // TodoTile(
          //   taskName: "Schedule Meeting",
          //   taskCompleted: false,
          //   onChanged: (p0) {},
          // ),
    );
  }
  }