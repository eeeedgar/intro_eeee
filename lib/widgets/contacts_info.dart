import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:intro_eeee/constants.dart';
import 'package:intro_eeee/widgets/blink.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

class ContactsInfo extends StatelessWidget {
  const ContactsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: const Text(
              'e-mail:',
              style: TextStyle(
                fontFamily: 'FeatureMono',
                fontSize: 30,
                color: fontYellow,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 30),
            child: GestureDetector(
              child: const Text(
                '> edgar.rakhmankulov@yandex.ru',
                style: TextStyle(
                  fontFamily: 'FeatureMono',
                  fontSize: 40,
                  color: fontYellow,
                ),
              ),
              onTap: () {
                Clipboard.setData(const ClipboardData(text: 'edgar.rakhmankulov@yandex.ru'));
                _showFloatingFlushBar(context);
              },
            ),
          ),
          const Text(
            'telegram:',
            style: TextStyle(
              fontFamily: 'FeatureMono',
              fontSize: 30,
              color: fontYellow,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 30),
            child: GestureDetector(
              child: const Text(
                '> @eeeedgar',
                style: TextStyle(
                  fontFamily: 'FeatureMono',
                  fontSize: 40,
                  color: fontYellow,
                ),
              ),
              onTap: () {
                launchUrl(Uri.parse('https://t.me/eeeedgar'));
              },
            ),
          ),
          const Text(
            'github:',
            style: TextStyle(
              fontFamily: 'FeatureMono',
              fontSize: 30,
              color: fontYellow,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 30),
            child: GestureDetector(
              child: const Text(
                '> eeeedgar',
                style: TextStyle(
                  fontFamily: 'FeatureMono',
                  fontSize: 40,
                  color: fontYellow,
                ),
              ),
              onTap: () {
                launchUrl(Uri.parse('https://github.com/eeeedgar'));
              },
            ),
          ),
        ],
      ),
    );
  }

  void _showFloatingFlushBar(BuildContext context) {
    Flushbar(
      maxWidth: 600,
      padding: const EdgeInsets.all(40),
      messageText: const Center(
        child: Text(
          'e-mail copied!',
          style: TextStyle(
            fontFamily: 'FeatureMono',
            color: fontYellow,
            fontSize: 30,
          ),
        ),
      ),
      backgroundColor: Colors.blueGrey,
      duration: const Duration(seconds: 1),
      margin: const EdgeInsets.all(20),
      icon:
      BlinkIcon(),
    ).show(context);
  }
}
