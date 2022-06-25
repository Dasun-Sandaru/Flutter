


import 'package:flutter/material.dart';

class StatefullWidgetScreen extends StatefulWidget {
  const StatefullWidgetScreen({Key? key}) : super(key: key);

  @override
  State<StatefullWidgetScreen> createState() => _StatefullWidgetScreenState();
}

class _StatefullWidgetScreenState extends State<StatefullWidgetScreen> {


  int count = 0;

  void increment(){

    setState(() {
      count = count + 1;
      print(count);
      
    }); 
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("StateLessWidget Example"),
      ),

      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("You have pushed button times",style: TextStyle(fontSize: 20.0),),
            Text('$count',style: const TextStyle(fontSize: 25.0),),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}