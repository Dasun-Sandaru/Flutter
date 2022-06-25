import 'dart:html';

import 'package:flutter/material.dart';

// GridView Count ---- Static view

// class GridViewScreen extends StatelessWidget {
//   const GridViewScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//       appBar: AppBar(
//         title: const Text('Grid View Exmple'),
//       ),

//       //GridView Count ---- Static view

//       body: GridView.count(
//         crossAxisCount: 2,
//         //reverse: true,

//         mainAxisSpacing:  10.0, // between rows
//         crossAxisSpacing: 15.0, // between column

//         children: [
//           Container(
//             color: Colors.amber[100],
//           ),
//           Container(
//             color: Colors.amber[200],
//           ),
//           Container(
//             color: Colors.amber[300],
//           ),
//           Container(
//             color: Colors.amber[400],
//           ),
//           Container(
//             color: Colors.amber[500],
//           ),
//           Container(
//             color: Colors.amber[600],
//           ),
//           Container(
//             color: Colors.amber[700],
//           ),
//           Container(
//             color: Colors.amber[800],
//           ),
//         ],
//       ),
//     );
//   }
// }

// GridView Count ---- dynamic view

class GridViewScreen extends StatelessWidget {
  
  final List _clr = <int>[100, 200, 300, 400, 500, 600, 700, 800, 900];

  GridViewScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View Exmple'),
      ),

      //GridView Count ---- dynamic view

      body: GridView.builder(
        itemCount: _clr.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          var color = _clr[index];
          return Container(
            color: Colors.amber[index],
          );
        },
      ),
    );
  }
}
