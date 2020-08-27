import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  //runApp(MaterialApp(home: FirstPage()));
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      //define class name
      '/': (context) => FirstScreen(),
      '/second': (context) => SecondScreen(),
    },
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //home: FirstPage(),
        );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SecondPage()));
          },
          child: Text("Go to second page"),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RaisedButton(
        onPressed: () {
          Navigator.pop(context); //back to previous page
          //Navigator.push(
          // context, MaterialPageRoute(builder: (context) => FirstPage()));
        },
        child: Text("back to first page"),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
          child: Text("Go to second page"),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RaisedButton(
        onPressed: () {
          Navigator.pop(context); //back to previous page
          //Navigator.push(
          // context, MaterialPageRoute(builder: (context) => FirstPage()));
        },
        child: Text("back to first page"),
      ),
    );
  }
}
