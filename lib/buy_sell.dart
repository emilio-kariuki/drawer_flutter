import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class BuySell extends StatefulWidget {
  BuySell({Key? key}) : super(key: key);

  @override
  _BuySellState createState() => _BuySellState();
}

class _BuySellState extends State<BuySell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Buy or Sell",
            style: GoogleFonts.roboto(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          )
        ),
      ),
    );
  }
}