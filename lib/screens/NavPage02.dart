



import 'package:flutter/material.dart';

import 'NavPage01.dart';


class NavPage02 extends StatelessWidget {

  late String pass;

  NavPage02(String pass){

      print(pass);
      this.pass = pass;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Router Example"),

        leading: IconButton(
          onPressed: (){
            Navigator.pop(context, NavPage01());
          }, 
          icon: const Icon(Icons.home)),
      ),


      body:  
        Center(
          child: Column(
        
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              const Text("Fultter Navgation Page 02"),
              Text(pass),
            ],
          ),
        ),


        floatingActionButton: FloatingActionButton(
          onPressed: (){

            // Using Route Table
            Navigator.of(context).pushNamed("/page1");
            
          },
          
          child: const Icon(Icons.add),),
        
        );
  }
}


