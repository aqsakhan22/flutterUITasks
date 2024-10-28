import  'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
class TextAnimations extends StatefulWidget {
  const TextAnimations({Key? key}) : super(key: key);

  @override
  State<TextAnimations> createState() => _TextAnimationsState();
}

class _TextAnimationsState extends State<TextAnimations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Animate(
            effects: [FadeEffect(), ScaleEffect()],
            child: Text("Hello World!"),
          )

        ],
      ),
    );
  }
}
