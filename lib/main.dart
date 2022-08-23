import 'package:flutter/material.dart';
import 'package:intro_eeee/intro_page.dart';

void main() {
  runApp(const EeeeApp());
}


class EeeeApp extends StatelessWidget {
  const EeeeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}

