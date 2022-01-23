// ignore_for_file: deprecated_member_use

import 'package:drawer_flutter/back/back.dart';
import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import "package:drawer_flutter/register.dart";
import "package:drawer_flutter/login.dart";
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_svg/svg.dart';

class Display extends StatelessWidget {
  const Display({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.05),
            SvgPicture.asset(
              "assets/images/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            Card(
              color: Colors.purple[900],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: FlatButton(
                    color: Colors.purple[900],
                    onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Login();
                        },
                      ),
                    );
                  },
                    child: Text("LOGIN"),
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.purple[900],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: FlatButton(
                    color: Colors.purple[900],
                    onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Register();
                        },
                      ),
                    );
                  },
                    child: Text("REGISTER"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
