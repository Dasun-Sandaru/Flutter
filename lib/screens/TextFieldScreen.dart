



import 'package:flutter/material.dart';

class TextFieldScreen extends StatefulWidget {

  //TextEditingController title = TextEditingController();

  // const TextFieldScreen({Key? key}) : super(key: key);

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  @override
  Widget build(BuildContext context) {

    

    return Scaffold(

      appBar: AppBar(
        //title: const Text("Text Field Example"),
        title: const TextField(
          keyboardType: TextInputType.text,

          // ignore: unnecessary_const
          decoration: const InputDecoration(

            prefixIcon: Icon(Icons.search,color: Colors.white,),

            suffixIcon: IconButton(
              
              onPressed: null, 
              icon: Icon(Icons.close),
            ),

            border: InputBorder.none,
            filled: true,
            hintText: 'Search',
            hintStyle: TextStyle(color: Colors.white70),

          ),
        ),

      ),

      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(

                cursorColor: Colors.red,
                maxLength: 8,
                style: const TextStyle(fontSize: 20.0),

                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search),

                ),


                onChanged: (text){
                    print(text);
                },


                onSubmitted: (text){
                  print(text);
                },


                //controller: title,


            ),
          ),

          const Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
                maxLength: 8,
                style: TextStyle(fontSize: 20.0),
                obscureText: true,
                keyboardType: TextInputType.number,
                //autofocus: true,
                enabled: false,

            ),
          ),

        ],
      ),

    );
  }
}