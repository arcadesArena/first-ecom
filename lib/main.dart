import 'package:first_app/screens/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() => runApp(mainApp());

class mainApp extends StatelessWidget {
  const mainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Splash(),
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        duration: 2000,
        splashIconSize: 150,
        splash: Icons.shopping_cart,
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.blueGrey,
        nextScreen: bottomNavBar(),
      ),
    );
  }
}
