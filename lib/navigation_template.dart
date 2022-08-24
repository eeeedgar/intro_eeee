import 'package:flutter/material.dart';
import 'package:intro_eeee/colors.dart';
import 'package:intro_eeee/main.dart';

class NavigationTemplate extends StatefulWidget {
  final Function? up;
  final Function? down;
  final Function? left;
  final Function? right;
  final Widget data;

  const NavigationTemplate({
    Key? key,
    this.up,
    this.down,
    this.left,
    this.right,
    required this.data,
  }) : super(key: key);

  @override
  State<NavigationTemplate> createState() => _NavigationTemplateState();
}

class _NavigationTemplateState extends State<NavigationTemplate> {
  bool _isLoaded = false;
  final color = Colors.white;

  @override
  void dispose() {
    print('game dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('game build');
    WidgetsBinding.instance.addPostFrameCallback((_) => _setPageLoaded());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Flexible(
                child: (widget.up == null)
                    ? Container()
                    : GestureDetector(
                        child: Container(
                          color: color,
                          alignment: Alignment.center,
                          child: const AnimatedOpacity(
                            // opacity: _isLoaded ? 1.0 : 0.0,
                            opacity: 1,
                            duration: Duration(milliseconds: 1500),
                            child: Icon(
                              Icons.keyboard_arrow_up_rounded,
                              size: 50,
                            ),
                          ),
                        ),
                        onTap: () => widget.up!(),
                      ),
              ),
              Flexible(
                flex: 10,
                child: Row(
                  children: [
                    Flexible(
                      child: (widget.left == null)
                          ? Container()
                          : GestureDetector(
                              child: Container(
                                color: color,
                                alignment: Alignment.center,
                                child: const AnimatedOpacity(
                                  // opacity: _isLoaded ? 1.0 : 0.0,
                                  opacity: 1,
                                  duration: Duration(milliseconds: 1500),
                                  child: Icon(
                                    Icons.keyboard_arrow_left_rounded,
                                    size: 50,
                                  ),
                                ),
                              ),
                              onTap: () => widget.left!(),
                            ),
                    ),
                    Flexible(
                      flex: 10,
                      child: Container(
                        child: widget.data,
                      ),
                    ),
                    Flexible(
                      child: (widget.right == null)
                          ? Container()
                          : GestureDetector(
                              child: Container(
                                color: color,
                                alignment: Alignment.center,
                                child: const AnimatedOpacity(
                                  // opacity: _isLoaded ? 1.0 : 0.0,
                                  opacity: 1,
                                  duration: Duration(milliseconds: 1500),
                                  child: Icon(
                                    Icons.keyboard_arrow_right_rounded,
                                    size: 50,
                                  ),
                                ),
                              ),
                              onTap: () => widget.right!(),
                            ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: (widget.down == null)
                    ? Container()
                    : GestureDetector(
                        child: Container(
                          color: color,
                          alignment: Alignment.center,
                          child: const AnimatedOpacity(
                            // opacity: _isLoaded ? 1.0 : 0.0,
                            opacity: 1,
                            duration: Duration(milliseconds: 1500),
                            child: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              size: 50,
                            ),
                          ),
                        ),
                        onTap: () => widget.down!(),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _setPageLoaded() {
    if (!_isLoaded) {
      setState(() {
        _isLoaded = true;
      });
    }
  }
}

Route getRoute(Widget page, String direction) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return getSlideTransition(context, animation, secondaryAnimation, child, direction);
    },
  );
}

SlideTransition getSlideTransition(
    context, animation, secondaryAnimation, child, direction) {
  Offset begin;
  Offset end = Offset.zero;

  switch (direction) {
    case 'up':
      {
        begin = const Offset(0.0, -1.0);
        break;
      }
    case 'down':
      {
        begin = const Offset(0.0, 1.0);
        break;
      }
    case 'left':
      {
        begin = const Offset(-1.0, 0.0);
        break;
      }
    case 'right':
      {
        begin = const Offset(1.0, 0.0);
        break;
      }

    default:
      begin = const Offset(0.0, 1.0);
  }

  const curve = Curves.easeIn;

  var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

  return SlideTransition(
    position: animation.drive(tween),
    child: child,
  );
}
