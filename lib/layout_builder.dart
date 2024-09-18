
import 'package:flutter/material.dart';
class LayOuTBuilder extends StatefulWidget {
  const LayOuTBuilder({Key? key}) : super(key: key);

  @override
  State<LayOuTBuilder> createState() => _LayOuTBuilderState();
}

class _LayOuTBuilderState extends State<LayOuTBuilder> {


  // Custom widget functions for different layouts
  Widget _buildTwoColumnLayout() {
    // Implement your two-column layout here
    return Container(

      // Your widget tree for two-column layout
    );
  }
  Widget _buildSingleColumnLayout() {
    // Implement your single-column layout here
    return Container(
      // Your widget tree for single-column layout
      child: Column(
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
          Container(
            color: Colors.green,
            height: 200,
          ),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: const Text('Responsive Design')),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          print("maxWidth is  ${constraints.maxWidth} "
              "max height ${constraints.maxHeight}"
              " ${constraints.minWidth} sizecwidth ${size.width} size height ${size.height}");
 /*
 * Mobiles
320px
480px
640px

Tablets
768px
1024px - landscape

Desktops
1124px*/

          /*
          * // Define your layout logic based on availableWidth and availableHeight
          if (availableWidth >= 600) {
            // For larger screen width (e.g., tablets), show a two-column layout
            return _buildTwoColumnLayout();
          } else {
            // For smaller screen width (e.g., smartphones), show a single-column layout
            return _buildSingleColumnLayout();
          }
        },
      ),*/
          // maxWidth is -> exact size of thar screen if screen is fit to that digist
          // minWidth is  ->

          if(constraints.maxWidth < 650){
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Mobile Phone ${MediaQuery.of(context).orientation}")
                ],
              ),
            );

          }
 if(constraints.maxWidth >= 650){
   // 720 portrait
   // 1024 landscape

   return Center(
     child: Column(
       children: [
         Text("Tablet Mode${MediaQuery.of(context).orientation}")
       ],
     ),
   );

 }


          else{
            return Center(
              child: Column(
                children: [
                  Text(" Website because exceed to 1024 ${MediaQuery.of(context).orientation}")
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
