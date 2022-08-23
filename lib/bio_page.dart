import 'package:flutter/material.dart';
import 'package:intro_eeee/intro_page.dart';
import 'package:intro_eeee/navigation_template.dart';

class BioPage extends StatefulWidget {
  const BioPage({Key? key}) : super(key: key);

  @override
  State<BioPage> createState() => _BioPageState();
}

class _BioPageState extends State<BioPage> {
  @override
  Widget build(BuildContext context) {
    return NavigationTemplate(
      data: const Center(
        child: Text('It is my bio'),
      ),
      down: () => Navigator.of(context)
          .pushReplacement(getRoute(const IntroPage(), 'down')),
    );
  }
}
