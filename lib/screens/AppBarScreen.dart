



import 'package:flutter/material.dart';


class AppBarScreen extends StatelessWidget{
  @override
  Widget build(Object context) {
    return SafeArea(
      
      child: DefaultTabController(

        length: 3,

        child: Scaffold(
          
          appBar: AppBar(
      
            title: const Text('App bar example'),
          
            leading: IconButton(onPressed: (){}, icon: const Icon(Icons.menu,)) ,
          
            actions: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.search,)) ,
              IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)) ,
            ],
          
            flexibleSpace: IconButton(onPressed: (){}, icon: const Icon(Icons.stream),color: Colors.white10,iconSize: 70.0,),
      
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car),text: "Tab 1",),
                Tab(icon: Icon(Icons.directions_transit),text: "Tab 2"),
                Tab(icon: Icon(Icons.directions_bike),text: "Tab 3"),
              ],
            ),

            backgroundColor: Colors.pink,

            elevation: 20.0,

          ),

          body: TabBarView(children: [
            // Icon(Icons.directions_car),
            tab1(),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
          ),
        ),
      ),
    );
  }

}

Widget tab1(){
  return Container(
    child: const Center(
      child: Text("1 St Tab View"),
    ),
  );
}