
import 'package:flutter/material.dart';

class RowColumnScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Row & Column Example"),
      ),

      body: Container(

        color: Colors.pink,

        child: Row(

          children: [
            const Text("Text 01",style: TextStyle(fontSize: 20.0),),
            const Text("Text 02",style: TextStyle(fontSize: 20.0),),
            const Text("Text 03",style: TextStyle(fontSize: 20.0),),
            Column(
              children:const [
                  Text("Text 01",style: TextStyle(fontSize: 20.0,color: Colors.white),),
                  Text("Text 02",style: TextStyle(fontSize: 20.0,color: Colors.white),),
                  Text("Text 03",style: TextStyle(fontSize: 20.0,color: Colors.white),),
              ],
            )
          ],
        ),
      ),
    );
  }
}