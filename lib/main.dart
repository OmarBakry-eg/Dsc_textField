import 'package:dsc_app/text_field.dart';
import 'package:flutter/material.dart';

import 'const.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String username;
    String password;
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: loginTitleTextStyle,
            ),
            SizedBox(
              height: 10,
            ),
            MyTextField(
              inputDecoration: usernameDecoration,
              onChange: (String userInput) {
                username = userInput;
              },
              obscure: false,
            ),
            MyTextField(
              inputDecoration: usernameDecoration.copyWith(
                labelText: 'Password',
                hintText: 'Type your password',
              ),
              obscure: true,
              onChange: (String userInput) {
                password = userInput;
              },
            ),
            SizedBox(
              width: 360,
              height: 50,
              child: RaisedButton(
                onPressed: () {
                  print('username is $username , password is $password');
                },
                color: Colors.blue,
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
