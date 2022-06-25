//FlutterFormScreen

import 'package:flutter/material.dart';

class FlutterFormScreen extends StatefulWidget {
  const FlutterFormScreen({Key? key}) : super(key: key);

  @override
  State<FlutterFormScreen> createState() => _FlutterFormScreenState();
}

class _FlutterFormScreenState extends State<FlutterFormScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _txtName1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forms Example"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            margin: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextFormField(
                  maxLength: 20,

                  decoration: const InputDecoration(
                    hintText: "Name",
                  ),

                  //Validation
                  validator: (txt) {
                    if (txt == null || txt.isEmpty) {
                      return "Name connot be empty"; // form is not valid
                    }
                    return null; // form is valid
                  },

                  onSaved: (txtName) {
                    _txtName1 = txtName;
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid,
                      print("Pressed");

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );

                      _formKey.currentState!.save();
                      print(_txtName1);
                    }
                  },
                  child: Text("Save"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
