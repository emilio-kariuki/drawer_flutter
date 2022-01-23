import "package:flutter/material.dart";
import 'dart:async';

import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatefulWidget {
  Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    // Create a timer to switch SplashScreen to HomeScreen after 2 seconds.
    Timer(Duration(seconds: 2),
        // To do this, use the static method of the navigator.
        // This is very similar to passing the lambda function to the std::function argument in C++.
        () {
      Navigator.pushReplacementNamed(context, "/home");
    });
    print("Shown splash");
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 14,
      navigateAfterSeconds: new AfterSplash(),
      title: Text(
        "Emilio",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      image: AssetImage(""),
      backgroundColor: Colors.white,
      loaderColor: Colors.red,
    );
  }
}
