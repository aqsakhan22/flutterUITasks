import 'package:flutter/material.dart';
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  Widget grid_view(){
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(10, (index) =>
          Card(
          color: Colors.orange,
          child: Center(child: Text("${index + 1 }",style: TextStyle(color: Colors.white),))),
      ),
    );

  }
  Widget usingOrientation(){

    return OrientationBuilder(builder: (context,orientation){
      return orientation == Orientation.portrait ?
      Container(
        color: Colors.blue,
        child:const Center(
          child: Text("Portrait"),
        ),
      )
          :
      Container(
        color: Colors.green,
        child: Center(
          child: Text("Landscape"),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) => OrientationBuilder(builder: (context,orientation) {
    final isPortrait=orientation == Orientation.portrait;
    bool isMobile = MediaQuery.of(context).size.width < 600;

    return Scaffold(
      appBar: AppBar(title: Text("Orientation"),),

      drawer: isMobile ?

          Drawer(
            child:   Container(
              color: Colors.grey[300],
              width: 300,
              child: Center(
                child: Text("SideBar"),
              ),

            )
          )
          : null,
      body: Row(
        children: [
          if(!isMobile)
            Container(
              color: Colors.grey[300],
              width: 300,
            child: Center(
              child: Text("SideBar"),
            ),

            )
          ,
          Expanded(child:
          GridView.count(
            crossAxisCount: isPortrait ?  2 : 3,
            children: List.generate(10, (index) =>
                Card(
                    color: Colors.orange,
                    child: Center(child: Text("${index + 1 }",style: TextStyle(color: Colors.white),))),
            ),
          ))
        ],
      ),

    );

  });
}
