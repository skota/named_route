import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/home': (context) => HomePage(),
        '/details': (context) => DetailsPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
      ),
      body: Center(
          child: Column(children: <Widget>[
        Text("Home"),
        SizedBox(height: 40),
        RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/details");
            },
            child: Text("goto details"))
      ])),
    );
  }
}

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details page"),
      ),
      body: Center(child: Text("Details")),
    );
  }
}
