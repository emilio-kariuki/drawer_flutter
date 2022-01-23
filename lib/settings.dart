import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_settings_screens/flutter_settings_screens.dart';

class Settings extends StatefulWidget {
  Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Settings",
            style: GoogleFonts.roboto(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          )
        ),
      ),
    );
  }
}