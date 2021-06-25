import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';
import 'animation/background_painter.dart';
import 'signin.dart';
import 'register.dart';

//here we will create the front-end required for client side

class LogInscreen extends StatefulWidget {
  @override
  _LogInscreenState createState() => _LogInscreenState();
}

class _LogInscreenState extends State<LogInscreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  ValueNotifier<bool> showSignInPage = ValueNotifier<bool>(true);

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    super.initState();
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LitAuth.custom(
          errorNotification: const NotificationConfig(
            backgroundColor: ExtendedColor.darkBlue,
            icon: Icon(
              Icons.error_outline,
              color: Colors.deepOrange,
              size: 32,
            ),
          ),
          successNotification: const NotificationConfig(
              backgroundColor: ExtendedColor.darkBlue,
              icon: Icon(Icons.check, color: Colors.white, size: 32)),
          child: Stack(
            children: [
              SizedBox.expand(
                child: CustomPaint(
                  painter: BackgroundPainter(
                    animation: _controller.view,
                  ),
                ),
              ),
              Center(
                  child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 800),
                      child: ValueListenableBuilder<bool>(
                          valueListenable: showSignInPage,
                          builder: (context, value, child) {
                            return PageTransitionSwitcher(
                                duration: Duration(milliseconds: 850),
                                transitionBuilder:
                                    (child, animation, secondaryAnimation) {
                                  return SharedAxisTransition(
                                    animation: animation,
                                    secondaryAnimation: secondaryAnimation,
                                    transitionType:
                                        SharedAxisTransitionType.vertical,
                                    fillColor: Colors.transparent,
                                    child: child,
                                  );
                                },
                                child: value
                                    ? SignIn(
                                        onRegisterClicked: () {
                                          context.resetSignInForm();
                                          showSignInPage.value = false;
                                          _controller.forward();
                                        },
                                      )
                                    : Register(onSignInPressed: () {
                                        context.resetSignInForm();
                                        showSignInPage.value = true;
                                        _controller.reverse();
                                      }));
                          })))
            ],
          )),
    );
  }
}
