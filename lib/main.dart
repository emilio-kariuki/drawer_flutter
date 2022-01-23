import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "defaults.dart";
import "Home.dart";
import 'profile.dart';
import 'sell.dart';
import 'contacts.dart';
import 'messages.dart';
import 'settings.dart';
import 'login.dart';
import 'Welcome/display.dart';
import 'register.dart';

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
        "/register": (context) => Register(),
        "/login": (context) => Login(),
      },
    ),
  );
}
