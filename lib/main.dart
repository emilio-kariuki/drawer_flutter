import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "defaults.dart";
import "Home.dart";
import 'profile.dart';
import 'sell.dart';
import 'contacts.dart';
import 'messages.dart';
import 'settings.dart';
import 'Welcome/display.dart';
// import 'package:flutter_launcher_icons/android.dart';
// import 'package:flutter_launcher_icons/constants.dart';
// import 'package:flutter_launcher_icons/custom_exceptions.dart';
// import 'package:flutter_launcher_icons/ios.dart';
// import 'package:flutter_launcher_icons/main.dart';
// import 'package:flutter_launcher_icons/utils.dart';
// import 'package:flutter_launcher_icons/xml_templates.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Home(),
      initialRoute: "/display",
      routes: {
        "/display": (context) => Display(),
        "/profile": (context) => Profile(),
        "/messeges": (context) => Messeges(),
        "/sell": (context) => Sell(),
        "/contacts": (context) => Contacts(),
        "/settings": (context) => Settings(),
        "/home": (context) =>Home(),
      },
    ),
  );
}
