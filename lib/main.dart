import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BG Changer",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Random Background"),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var colors = [
    Colors.amber,
    Colors.black,
    Colors.blue,
    Colors.yellow,
    Colors.green,
    Colors.red,
    Colors.pink,
    Colors.orange,
    // Color(0xFF#FD2323)
  ];

  var defaultColor = Colors.white;
  var defaultBColor = Colors.black;

  setRandomColor() {
    var rnd = Random().nextInt(7);
    var rnd2 = Random().nextInt(7);
    // var rnd = Random().nextInt(colors.length);

    setState(() {
      defaultColor = colors[rnd];
      defaultBColor = colors[rnd2];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: defaultColor,
      child: Center(
        child: RaisedButton(
          color: defaultBColor,
          padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
          child: Text(
            "Change it!",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          // onPressed: setRandomColor,
          onPressed: () {
            setRandomColor();
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        ),
      ),
    );
  }
}
