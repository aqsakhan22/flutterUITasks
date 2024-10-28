import 'package:flutter/material.dart';
// Glocal key is unique key in entire app
class GlobalExampleKey extends StatefulWidget {
  const GlobalExampleKey({Key? key}) : super(key: key);

  @override
  State<GlobalExampleKey> createState() => _GlobalExampleKeyState();
}

class _GlobalExampleKeyState extends State<GlobalExampleKey> {
  final _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text("Item 1"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Item 2"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      key: _key,
      appBar: AppBar(
        title: Text("Global Key"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Open Drawer"),
          onPressed: () {
            _key.currentState?.openDrawer();
          },
        ),
      ),
    );
  }
}









