import 'package:flutter/material.dart';
class ScreenSize{

  static void getScreenSize(){


  }
}

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  const Responsive({
    Key? key,
    required this.desktop,
    required this.mobile,
    required this.tablet,
  }) : super(key: key);

  // /// mobile < 650
  // static bool isMobile(BuildContext context) =>
  //     MediaQuery.of(context).size.width < 650;
  //
  // /// tablet >= 650
  // static bool isTablet(BuildContext context) =>
  //     MediaQuery.of(context).size.width >= 650;
  //
  // ///desktop >= 1100
  // static bool isDesktop(BuildContext context) =>
  //     MediaQuery.of(context).size.width >= 1100;

  Widget MobileScreen(){
    return ListView(
      children: [
        Container(
          height: 150,
         child: Row(
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Expanded(child: Image.asset("assets/palceholder_image.jpeg")) ,
             SizedBox(width: 10.0,),
             Expanded(child: Image.asset("assets/palceholder_image.jpeg")),
             SizedBox(width: 10.0,),
             Expanded(child: Image.asset("assets/palceholder_image.jpeg"))
           ],
         )
        ),

        Container(
            width: 100,height: 100,
          color: Colors.blue,
          child: ListView.builder(
            shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context,int index){
            return  Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: CircleAvatar(
                  radius: 30,
                  // backgroundColor: Colors.white,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/palceholder_image.jpeg",),
                  )
              ),
            );
          })
        ),
        Container(
            color: Colors.green,
            child:
            Text("Asside")
        ),
        Container(
            color: Colors.green,
            child:
            Text("Footer")
        ),
      ],
    );
  }

  Widget TabletScreen(){
    return ListView(
      children: [
        Container(
          color: Colors.red,
          height: 200,
        ),
        Container(
          color: Colors.blue,
          height: 200,
          child: Row(
            children: [
              Expanded(

                  child: Container(
                    height: 50,
                    color: Colors.orange,
                  )
              ),
              Expanded(

                child:
                Container(
                  height: 50,
                  color: Colors.green,
                ),
              ),
              Expanded(

                child: Container(
                  height: 50,
                  color: Colors.pink,
                ),
              ),


            ],
          ),
        ),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return
     Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.blue,
         title: Text("Responsive Design",style: TextStyle(color: Colors.white),),
       ),
       body:  LayoutBuilder(builder: (context, constraints) {
         if (constraints.maxWidth >= 1100) {
           return desktop;
         } else if (constraints.maxWidth >= 650) {
           return TabletScreen();
         } else {
           return MobileScreen();
         }
       }),
     );
  }
}


