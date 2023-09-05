import 'package:flutter/material.dart';
import 'package:quiz_game/pages/home_page.dart';

void main(List<String> args) {
  runApp(Application());
}

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'dm'),
      home: HomePage(),
    );
  }
}
