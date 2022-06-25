import 'package:allinonec/screens/NavPage02.dart';
import 'package:flutter/material.dart';

import 'package:device_preview/device_preview.dart';

import 'screens/AppBarScreen.dart';
import 'screens/ContainerScreen.dart';
import 'screens/FlutterFormScreen.dart';
import 'screens/FromManageScreen.dart';
import 'screens/HomeScreen.dart';
import 'screens/ListViewScreen.dart';
import 'screens/NavPage01.dart';
import 'screens/RowColumnScreen.dart';
import 'screens/StatefullWidgetScreen.dart';
import 'screens/StatelessWidgetScreen.dart';
import 'screens/TextFieldScreen.dart';
import 'screens/Ui/GridViewScreen.dart';
import 'screens/mylog/login.dart';

void main(){
   
   runApp(MyApp());

  //---------------- Add Device Preview -------------------------
  // DevicePreview(
  //   //enabled: !kReleaseMode,
  //   builder: (context) => MyApp(), // Wrap your app
  // );
}

class MyApp extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
 
      debugShowCheckedModeBanner: false,

      //---------------------- Add Device Preview -----------------------
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,

      title: "All In One",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
      home: GridViewScreen(),
      
      //Route Table
      routes: <String,WidgetBuilder>{
        '/page1': (context) => NavPage01(),
      },

    );
  }

}



// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Validate returns true if the form is valid, or false otherwise.
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                  },
                  child: const Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}