



import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {

  var items = List<String>.generate(100, (index) => "Item $index");

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("List View Example"),
      ),

      body: ListView.builder(

        itemCount: items.length,
        itemBuilder: (context,index){
          return  ListTile(
            title: Text(items[index]),
          );
        },
        )

    );
  }
}