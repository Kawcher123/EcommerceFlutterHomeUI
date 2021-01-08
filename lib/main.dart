import 'package:flutter/material.dart';
import 'package:secondflutter/homescreen.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Hoomescreen(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;

  incrementcounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("You clicked: "), Text("$_counter")],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementcounter,
        child: Icon(Icons.add),
      ),
    );
  }
}
