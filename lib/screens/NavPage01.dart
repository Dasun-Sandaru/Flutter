



import 'NavPage02.dart';
import 'package:flutter/material.dart';

class NavPage01 extends StatelessWidget {
  const NavPage01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Router Example"),
      ),


      body: const Center(
        child:  Text("Fultter Navgation Page 01"),
        ),


        floatingActionButton: FloatingActionButton(
          onPressed: (){
            
            // Move to NavPage02
            Navigator.of(context).push(MaterialPageRoute(
              builder: (_) {
                return NavPage02("Text Passed From Navpage01");
              }
            ));


          },
          
          child: const Icon(Icons.add),),
    );
  }
}