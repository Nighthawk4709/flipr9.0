import 'package:flipr/loginscreens/animation/decoratin.dart';
import 'package:flipr/loginscreens/animation/title.dart';
import 'package:flipr/loginscreens/signin_up_bar.dart';
import 'package:flutter/material.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';

import 'animation/background_painter.dart';
import 'buttons.dart';
import 'login.dart';
import 'register.dart';

//similarly if user wants to make an account he can use this screen
class SignIn extends StatelessWidget {
  const SignIn({
    Key? key,
    required this.onRegisterClicked,
  }) : super(key: key);

  final VoidCallback onRegisterClicked;

  @override
  Widget build(BuildContext context) {
    final isSubmitting = context.isSubmitting();
    return SignInForm(
        child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: LoginTitle(title: 'WeMail')),
                ),
                Expanded(
                    flex: 4,
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: EmailTextFormField(
                            decoration:
                                signInInputDecoration(hintText: 'Email'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: PasswordTextFormField(
                            decoration:
                                signInInputDecoration(hintText: 'Password'),
                          ),
                        ),
                        SignInBar(
                            label: 'Sign in',
                            isLoading: isSubmitting,
                            onPressed: () {
                              context.signInWithEmailAndPassword();
                            }),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ProviderButton(
                                context: context,
                                signInType: "google",
                              ),
                            ]),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: InkWell(
                              splashColor: Colors.white,
                              onTap: () {
                                onRegisterClicked.call();
                              },
                              child: const Text(
                                'Sign up',
                                style: TextStyle(
                                  fontSize: 16,
                                  decoration: TextDecoration.underline,
                                  color: ExtendedColor.darkBlue,
                                ),
                              ),
                            ))
                      ],
                    ))
              ],
            )));
  }
}
