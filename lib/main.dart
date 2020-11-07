import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SignInScreen());
  }
}

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('Sign in',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 30,
                          fontWeight: FontWeight.bold))),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Colors.grey, style: BorderStyle.solid)),
                      hintText: 'E-mail Address',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 20)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 35.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Colors.grey, style: BorderStyle.solid)),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 20)),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    color: Colors.red,
                    onPressed: () {},
                    child: Text(
                      'Log In',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  )),
              Center(
                  child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("OR"),
              )),
              Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    color: Colors.blue,
                    onPressed: () {},
                    child: Text(
                      'Facebook Login',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ))
            ],
          )),
    );
  }
}
