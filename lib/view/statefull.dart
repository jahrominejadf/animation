import 'package:flutter/material.dart';

class AnimationTest extends StatefulWidget {
  @override
  _AnimationTestState createState() => _AnimationTestState();
}

class _AnimationTestState extends State<AnimationTest> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('farnoooshiii zibaaa'),
      ),
      body: Center(
        child: Text(
          'hi ferooo asal  ',
          style: TextStyle(fontSize: 20),

        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
          });
        },
        child: Icon(Icons.add),

      ),
    );
  }
}