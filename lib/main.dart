import 'package:flutter/material.dart';
import "package:drawer_flutter/screens/home.dart";
import "package:drawer_flutter/screens/splash.dart";

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/splash",
      routes: {
        "/splash" : (context) => Splash(),
        "/home" : (context) => Home(),

      },
    ),
  );
}
