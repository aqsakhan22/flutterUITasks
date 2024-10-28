import 'package:flutter/material.dart';
import 'package:flutter_scrolling_fab_animated/flutter_scrolling_fab_animated.dart';
class ScrollAnimationFab extends StatefulWidget {
  const ScrollAnimationFab({Key? key}) : super(key: key);

  @override
  State<ScrollAnimationFab> createState() => _ScrollAnimationFabState();
}

class _ScrollAnimationFabState extends State<ScrollAnimationFab> {
  ScrollController _scrollController=ScrollController();

  @override
  Widget build(BuildContext context) {
    List items=["1","2","3","4","5","6","7","8","9","10","11"];
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Scrolling Fab Animated Demo'),
        ),
        body: Container(
          child: new ListView.builder(
              controller: _scrollController,
              itemCount: items.length,
              itemBuilder: (BuildContext ctxt, int index) {
                return new Card(
                    child: ListTile(
                      title: Text(items[index]),
                    )
                );
              }
          ),
        ),
        floatingActionButton: ScrollingFabAnimated(
          icon: Icon(Icons.add, color: Colors.white,),
          text: Text('Add', style: TextStyle(color: Colors.white, fontSize: 16.0),),
          onPress: (){},
          scrollController: _scrollController,
          animateIcon: true,
          inverted: false,
          radius: 10.0,
        )
    );
  }
}
