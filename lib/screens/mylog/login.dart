import 'package:allinonec/screens/mylog/home.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  String? _name;
  String? _pass;

  Widget buildPass() {
    return TextFormField(
      // password field

      validator: (valuePass) {
        if (valuePass == null || valuePass.isEmpty) {
          return 'Password Requid';
        }
        return null;
      },

      onSaved: (valuePass) {
        _pass = valuePass;
      },
    );
  }

  Widget buildName() {
    return TextFormField(
      // name field

      validator: (valueName) {
        if (valueName == null || valueName.isEmpty) {
          return 'Name Requied';
        }
        return null;
      },

      onSaved: (valueName) {
        _name = valueName;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                buildName(),
                buildPass(),
                ElevatedButton(
                  onPressed: () {
                    print('Button Clicked');

                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();

                      print(_name);
                      print(_pass);

                      if (_name == 'admin' && _pass == '123') {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) {
                              return Home();
                            },
                          ),
                        );
                      }
                    }
                  },
                  child: const Text('Save'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
