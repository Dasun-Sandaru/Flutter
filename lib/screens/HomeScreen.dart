import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("Example")),

      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text("This is Home Screen",style: TextStyle(fontSize: 20.0)),
            Text("example screen"),
            Text("example screen"),

          ],
        ),
      ),

      backgroundColor: Colors.grey,

      floatingActionButton: FloatingActionButton(
        onPressed:(){},
        child: const Icon(Icons.add),
      ),

    );
  } 
}