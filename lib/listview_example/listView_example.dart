import 'package:flutter/material.dart';
class ListviewExample extends StatefulWidget {
  const ListviewExample({Key? key}) : super(key: key);

  @override
  State<ListviewExample> createState() => _ListviewExampleState();
}
// https://medium.com/@pomis172/common-mistakes-with-listviews-in-flutter-f22e7dacfaf7
class _ListviewExampleState extends State<ListviewExample> {

  Widget getSimpleSingleChild(){
    /*A common mistake is disabling scrolling by adding NeverScrollableScrollPhysics or setting shrinkWrap to true. This approach initializes all the items at once, which can be problematic. We can conduct a simple experiment to confirm this issu*/
   // Only data render at once which effects on performance
    return   SingleChildScrollView(
      child: Column(
        children: [
          const Card(child: Text("Header card")),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 1000,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              print("building item #${index}");
              return Card(child: Text(index.toString()));
            },
          ),
          const Card(child: Text("Footer card")),
        ],
      ),
    );
  }

  Widget getSimpleListView(){
    /*A common mistake is disabling scrolling by adding NeverScrollableScrollPhysics or setting shrinkWrap to true. This approach initializes all the items at once, which can be problematic. We can conduct a simple experiment to confirm this issu*/
   // Only data render at once which effects on performance
    return
      ListView.builder(
        restorationId: 'news_feed',
        // padding: const EdgeInsets.all(40),
        // physics: const NeverScrollableScrollPhysics(),
        itemCount: 1000,
        shrinkWrap: true,

        itemBuilder: (context, index) {
          print("building item #${index}");
          return Card(child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
            child: Text(index.toString()),
          ));
        },
      );
  }

  Widget getSimpleSliver(){
    /*So, what should we do instead? The recommended approach is to use Slivers. Slivers allow for more efficient rendering by only building the items that are currently visible on the screen. This helps maintain smooth performance, even with large lists.*/
    return
      CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
              child: Card(
              color: Colors.orange,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Header card",style: TextStyle(color: Colors.white),),
              ))
          ),
          // SliverPrototypeExtentList.builder(
          //
          //   itemCount:100,
          //   itemBuilder: (context, index) {
          //     return Card(child: Padding(
          //       padding: const EdgeInsets.symmetric(vertical: 20.0),
          //       child: Text(index.toString()),
          //     ));
          //   },
          //   prototypeItem: const Card(child: Text("evf")),
          // ),

          SliverList.builder(

            itemCount: 100,
            // prototypeItem: const Card(
            //     color: Colors.red,
            //     child: Text("")),
            itemBuilder: (context, index) {
              print("building item #${index}");
              return Card(child: Text(index.toString()));
            },
          ),

          // SliverPadding(
          //   padding: EdgeInsets.all(20),
          //   sliver: SliverPrototypeExtentList.builder(
          //     itemBuilder: (context, index) {
          //       return Card(
          //           color: Colors.grey[300],
          //           child: Padding(
          //             padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
          //             child: Text(
          //               index.toString(),
          //               style: TextStyle(color: Colors.black),),
          //           ));
          //     },
          //     prototypeItem: const Card(child: Text("")),
          //   ),
          // ),
          const SliverToBoxAdapter(child: Card(child: Text("Footer card"))),
        ],
      );

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("ListviewExample"),),
      body: getSimpleListView()
    );
  }
}
