import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';

import 'homepage/homescreen.dart';
import 'loginscreens/animation/background_painter.dart';
import 'loginscreens/login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Center(child: Text('Something went wrong'));
        }
        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          // Initialize Lit Firebase Auth. Needs to be called before
          // `MaterialApp`, to ensure all of the child widget, even when
          // navigating to a new route, has access to the Lit auth methods
          return LitAuthInit(
            authProviders: const AuthProviders(
              emailAndPassword: true, // enabled by default
              google: true,
              apple: true,
              anonymous: true,
              github: true,
              twitter: true,
            ),
            child: MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Study',
                themeMode: ThemeMode.light,
                darkTheme: ThemeData.dark(),
                theme: ThemeData(
                  visualDensity: VisualDensity.adaptivePlatformDensity,
                  textTheme: GoogleFonts.muliTextTheme(),
                  accentColor: ExtendedColor.lightBlue,
                  appBarTheme: const AppBarTheme(
                    brightness: Brightness.dark,
                    color: ExtendedColor.darkBlue,
                  ),
                ),
                home: LitAuthState(
                  authenticated: HomeScreen(),
                  unauthenticated: LogInscreen(),
                )),
          );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
