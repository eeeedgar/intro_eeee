import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:intro_eeee/constants.dart';
import 'package:intro_eeee/widgets/blink.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

bool emailCopiedGlobal = false;

class ContactsInfoSmall extends StatefulWidget {
  const ContactsInfoSmall({Key? key}) : super(key: key);

  @override
  State<ContactsInfoSmall> createState() => _ContactsInfoSmallState();
}

class _ContactsInfoSmallState extends State<ContactsInfoSmall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundBlue,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: MaterialButton(
        minWidth: 200,
        height: 100,
        color: Colors.black38,
        highlightColor: Colors.black54,
        splashColor: const Color(0x00000000),
        onPressed: () => Navigator.of(context).pop(),
        child: const Text(
          'back',
          style: TextStyle(
            fontFamily: 'FeatureMono',
            color: fontYellow,
            fontSize: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          alignment: Alignment.topLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'e-mail:',
                  style: TextStyle(
                    fontFamily: 'FeatureMono',
                    fontSize: 20,
                    color: fontYellow,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 30),
                child: GestureDetector(
                        child: (emailCopiedGlobal) ?
                        const Text(
                          '> edgar.rakhmankulov@yandex.ru',
                          style: TextStyle(
                            fontFamily: 'FeatureMono',
                            fontSize: 20,
                            color: fontYellow,
                          ),
                        ) : getBlinkText(
                          '> edgar.rakhmankulov@yandex.ru',
                          fontSize: 20,
                        ),
                        onTap: () {
                          setState(() {
                            emailCopiedGlobal = true;
                          });
                          Clipboard.setData(const ClipboardData(
                              text: 'edgar.rakhmankulov@yandex.ru'));
                          _showFloatingFlushBar(context);
                        },
                      ),
              ),
              const Text(
                'telegram:',
                style: TextStyle(
                  fontFamily: 'FeatureMono',
                  fontSize: 20,
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
                      fontSize: 30,
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
                  fontSize: 20,
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
                      fontSize: 30,
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
        ),
      ),
    );
  }

  void _showFloatingFlushBar(BuildContext context) {
    Flushbar(
      maxWidth: 400,
      padding: const EdgeInsets.all(20),
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
      icon: BlinkIcon(),
    ).show(context);
  }
}

class ContactsInfoLarge extends StatefulWidget {
  const ContactsInfoLarge({Key? key}) : super(key: key);

  @override
  State<ContactsInfoLarge> createState() => _ContactsInfoLargeState();
}

class _ContactsInfoLargeState extends State<ContactsInfoLarge> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
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
            child: (emailCopiedGlobal)
                ? const Text(
                    '> edgar.rakhmankulov@yandex.ru',
                    style: TextStyle(
                      fontFamily: 'FeatureMono',
                      fontSize: 30,
                      color: fontYellow,
                    ),
                  )
                : GestureDetector(
                    child: getBlinkText(
                      '> edgar.rakhmankulov@yandex.ru',
                      fontSize: 30,
                    ),
                    onTap: () {
                      setState(() {
                        emailCopiedGlobal = true;
                      });
                      Clipboard.setData(const ClipboardData(
                          text: 'edgar.rakhmankulov@yandex.ru'));
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
      icon: BlinkIcon(),
    ).show(context);
  }
}
