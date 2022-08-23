import 'package:flutter/material.dart';
import 'package:intro_eeee/bio_page.dart';
import 'package:intro_eeee/colors.dart';
import 'package:intro_eeee/game_page.dart';
import 'package:intro_eeee/navigation_template.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {


  @override
  Widget build(BuildContext context) {
    return NavigationTemplate(
      data: const Center(
        child: Text('Hello, I am Edgar', style: TextStyle(fontSize: 100),),
      ),
      up: () =>
          Navigator.of(context).pushReplacement(getRoute(const BioPage(), 'up')),
      right: () => Navigator.of(context)
          .pushReplacement(getRoute(const GamePage(), 'right')),
    );
  }
}
