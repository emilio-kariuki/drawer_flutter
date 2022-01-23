import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "defaults.dart";
import "Home.dart";
import 'profile.dart';
import 'buy_sell.dart';
import 'contacts.dart';
import 'messages.dart';
import 'settings.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: {
        "/home": (context) => Home(),
        "/profile": (context) => Profile(),
        "/messeges": (context) => Messeges(),
        "/buy_sell": (context) => BuySell(),
        "/contacts": (context) => Contacts(),
        "/settings": (context) => Settings(),
      },
    ),
  );
}
