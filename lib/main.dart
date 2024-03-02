import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('hi world'),
        ),
        body: AnimationTest(),
      ));
}

class AnimationTest extends StatefulWidget {
  const AnimationTest({super.key});

  @override
  State<AnimationTest> createState() => AnimationTestState();
}

class AnimationTestState extends State<AnimationTest>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;

  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    animation = Tween<double>(begin: 0, end: 250).animate(controller);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) => Center(
        child: Container(
          width: animation.value,
          height: animation.value,
          color: Colors.pink,
        ),
      ),
    );
  }
}
