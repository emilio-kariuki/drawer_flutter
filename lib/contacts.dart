import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class Contacts extends StatefulWidget {
  Contacts({Key? key}) : super(key: key);

  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Contacts",
            style: GoogleFonts.roboto(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          )
        ),
      ),
    );
  }
}