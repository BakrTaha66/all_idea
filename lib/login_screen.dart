import 'package:all_idea/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();

  GlobalKey<FormState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 60),
          child: Center(
            child: Form(
              key: _key,
              child: Column(
                children: [
                  Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                  ),
                  SizedBox(
                    height: 64,
                  ),
                  Container(
                    width: 340,
                    height: 50,
                    child: TextFormField(
                      controller: name,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your name ';
                        } else if (value.length < 6) {
                          return 'Your minimum chracter is 7';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Username',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 340,
                    height: 50,
                    child: TextFormField(
                      controller: email,
                      validator: (value) {
                        if (!value!.contains('@')) {
                          return 'Please enter youe email';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Email',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 200,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(340, 50),
                        primary: Colors.indigo,
                      ),
                      onPressed: () {
                        if (_key.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        }
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
