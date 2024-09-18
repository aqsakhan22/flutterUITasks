import 'package:flutter/material.dart';
class GridviewEx extends StatelessWidget {
  const GridviewEx({Key? key}) : super(key: key);
  Widget GridBuilder(){
    List num=[1,2,3,4,5,6,7,8,8,9,10];
    return
      GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:2, // number of items in each row
          mainAxisSpacing: 8.0, // spacing between rows
          crossAxisSpacing: 8.0, // spacing between columns
          childAspectRatio:8.0
        ),
        padding: EdgeInsets.all(8.0), // padding around the grid
        itemCount: num.length, // total number of items
        itemBuilder: (context, index) {
          return Container(
            color: Colors.purple,
               height: 200   ,// color of grid items
              width: MediaQuery.of(context).size.width / 2,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("width ${MediaQuery.of(context).size.width / 2} ${MediaQuery.of(context).size.height / 8}",style: TextStyle(color: Colors.white),),
                Text("kjvguy",style: TextStyle(color: Colors.white),),
                Text("kjvguy",style: TextStyle(color: Colors.white),) ,

              ],
            )
          );
        },
      );

  }
// 2d array fixed columns and row
  Widget GridCount(){
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      shrinkWrap: true,
      children: List.generate(20, (index) {
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height:200,
          color: Colors.red,
          // decoration: BoxDecoration(
          //   color: Colors.red,
          //
          //   image: DecorationImage(
          //     image: AssetImage("assets/palceholder_image.jpeg"),
          //     fit: BoxFit.cover,
          //   ),
          //   borderRadius:
          //   BorderRadius.all(Radius.circular(20.0),),
          // ),
        ),
      );
    }),
    );

  }

  Widget GridExtent (){
    List num=[1,2,3,4,4,5,6,7,8,10];

    return GridView.extent(
      maxCrossAxisExtent: 200.0, // maximum item width
      mainAxisSpacing: 8.0, // spacing between rows
      crossAxisSpacing: 8.0, // spacing between columns
      padding: EdgeInsets.all(8.0), // padding around the grid
      children: num.map((item) {
        return Container(
          color: Colors.orange,
          // color of grid items
          child:  Center(
            child: Column(

              // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Image.asset("assets/palceholder_image.jpeg"),),
                  Text(
                    "${item}",
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ],
              ),
          ),

        );
      }).toList(),
    );
  }
  @override
  Widget build(BuildContext context) {
    List num=[1,2,3,4,5,6,7,8,8,9,10];
    return Scaffold(
      appBar: AppBar(title: Text("GridView Example"),),
      body:  GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:2, // number of items in each row
          mainAxisSpacing: 8.0, // spacing between rows
          crossAxisSpacing: 8.0, // spacing between columns
          // childAspectRatio: MediaQuery.of(context).size.width / MediaQuery.of(context).size.height ,
        ),
        padding: EdgeInsets.all(8.0), // padding around the grid
        itemCount: num.length, // total number of items
        itemBuilder: (context, index) {
          return Container(
              color: Colors.purple,
              // height: 200   ,// color of grid items
              // width: MediaQuery.of(context).size.width / 2,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("width",style: TextStyle(color: Colors.white),),
                  Text("kjvguy",style: TextStyle(color: Colors.white),),
                  Text("kjvguy",style: TextStyle(color: Colors.white),) ,
       Text("kjvguy",style: TextStyle(color: Colors.white),) ,

                ],
              )
          );
        },
      )
    );
  }

}
