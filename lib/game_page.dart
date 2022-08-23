import 'package:flutter/material.dart';
import 'package:intro_eeee/intro_page.dart';
import 'package:intro_eeee/navigation_template.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return NavigationTemplate(
      right: () => Navigator.of(context).pushReplacement(getRoute(const IntroPage(), 'up')),
      data: const Center(
        child: Text('It\'s a game, buddy'),
      ),
    );
  }
}
