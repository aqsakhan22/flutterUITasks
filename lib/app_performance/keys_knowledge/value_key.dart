import 'package:flutter/material.dart';
class ValueKeyExample extends StatefulWidget {
  const ValueKeyExample({Key? key}) : super(key: key);

  @override
  State<ValueKeyExample> createState() => _ValueKeyExampleState();
}

class _ValueKeyExampleState extends State<ValueKeyExample> {
  bool showFirst = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Value Key Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            if (showFirst) MyTextField(
              key: const ValueKey(1),
            ),
            MyTextField(key: const ValueKey(2)),
          ],
        ),
      ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              showFirst = false;
            });
          },
        ),
    );
  }
}



class MyTextField extends StatefulWidget {
  MyTextField({required Key key}) : super(key: key);

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(

      controller: controller,
    );
  }
}

class TaskApp extends StatefulWidget {
  @override
  _TaskAppState createState() => _TaskAppState();
}

class _TaskAppState extends State<TaskApp> {
  final List<String> tasks = ['Task 1', 'Task 2', 'Task 3', 'Task 4'];

  @override
  Widget build(BuildContext context) {
    return       Scaffold(
      appBar: AppBar(
        title: Text('Task List'),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final task = tasks[index];
          return TaskItem(
            key: ValueKey(task), // Using ValueKey with task as a unique identifier
            taskName: task,
            onTaskCompleted: () {
              _markTaskCompleted(index);
            },
          );
        },
      ),
    );
  }

  void _markTaskCompleted(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }
}

class TaskItem extends StatelessWidget {
  final String taskName;
  final VoidCallback onTaskCompleted;

  TaskItem({Key? key, required this.taskName, required this.onTaskCompleted}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskName),
      trailing: IconButton(
        icon: Icon(Icons.check),
        onPressed: onTaskCompleted,
      ),
    );
  }
}