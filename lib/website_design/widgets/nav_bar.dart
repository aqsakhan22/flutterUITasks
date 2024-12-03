import 'package:flutter/material.dart';
import 'package:responsivedesignflutter/website_design/widgets/navigation_item.dart';
class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> selectedIndex = ValueNotifier(0);
    List data=['Home','Contact Us','About US'];
    return
      ValueListenableBuilder(

          valueListenable: selectedIndex,
          builder: (context,value,child){
            return  Container(
              alignment: Alignment.topRight,
              // width: 100,
                height: 50,
                // padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
                //alignment: Alignment.topRight,
                decoration: const BoxDecoration(
                    color: Colors.black12
                ),
                child:  ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: data.length,
                    itemBuilder: (context,int index){
                      return
                        InkWell(
                          onTap: (){
                            selectedIndex.value=index;
                          },
                          child: Container(
                              margin: EdgeInsets.only(right: 10.0),
                              alignment: Alignment.center,
                              color: selectedIndex.value == index  ? Colors.redAccent : Colors.transparent,
                              child: NavigationItem(title: data[index],)),
                        );
                    })
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   // crossAxisAlignment: CrossAxisAlignment.end,
              //   //crossAxisAlignment: CrossAxisAlignment.stretch,
              //
              //   //[
              //
              //
              //     // NavigationItem(title:  'Home'),
              //     // NavigationItem(title:  'Contact Us'),
              //     // NavigationItem(title:  "About Us")
              //   //],
              // ),
            );
          });
  }
}
