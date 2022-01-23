import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class Messeges extends StatefulWidget {
  Messeges({Key? key}) : super(key: key);

  @override
  _MessegesState createState() => _MessegesState();
}

class _MessegesState extends State<Messeges> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Messeges",
            style: GoogleFonts.roboto(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          )
        ),
      ),
    );
  }
}