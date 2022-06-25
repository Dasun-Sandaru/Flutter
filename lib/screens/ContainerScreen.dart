

import 'package:flutter/material.dart';


class ContainerScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    return  Scaffold(

      appBar: AppBar(
        title: const Text("Container Example"),
      ),

      body: Container(
        color: Colors.pink,
        height: 200.0,
        //width: 300.0,
        width: double.infinity,

        padding: const EdgeInsets.all(20.0),
        margin: const EdgeInsets.all(15.0),

        alignment: Alignment.bottomCenter,
        
          child: const Text("Flutter Container Widget Example ",style: TextStyle(fontSize: 20.0,color: Colors.white),),
        
      ),
    ); 
  }
}