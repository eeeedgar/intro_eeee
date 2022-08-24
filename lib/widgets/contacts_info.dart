import 'package:flutter/material.dart';
import 'package:intro_eeee/constants.dart';

class ContactsInfo extends StatelessWidget {
  const ContactsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: const Text(
        contactsInfo,
        style: TextStyle(
          fontFamily: 'FeatureMono',
          fontSize: 50,
          color: fontYellow,
        ),
      ),
    );
  }
}
