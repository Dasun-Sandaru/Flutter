import 'package:flutter/material.dart';

class FromManageScreen extends StatefulWidget {
  const FromManageScreen({Key? key}) : super(key: key);

  @override
  State<FromManageScreen> createState() => _FromManageScreenState();
}

class _FromManageScreenState extends State<FromManageScreen> {
  String? _name;
  String? _password;

  final _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      validator: (valueName) {
        if (valueName == null || valueName.isEmpty) {
          return 'Name is Required';
        }

        return null;
      },
      onSaved: (valueName) {
        _name = valueName;
      },
    );
  }

  Widget _buildPass() {
    return TextFormField(
      validator: (valuePass) {
        if (valuePass == null) {
          return 'Password Required';
        }
        return null;
      },
      onSaved: (valuePass) {
        _password = valuePass;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("From Manage Screen"),
      ),
      body: SingleChildScrollView(
        key: _formKey,
        child: Form(
          child: Column(
            children: [
              _buildName(),
              _buildPass(),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                child: const Text("Save"),
                onPressed: () {
                  print("Pressed");

                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    print(_name);
                    print(_password);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
