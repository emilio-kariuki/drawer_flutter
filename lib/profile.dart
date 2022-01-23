import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Profile",
            style: GoogleFonts.roboto(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          )
        ),
      ),
    );
  }
}