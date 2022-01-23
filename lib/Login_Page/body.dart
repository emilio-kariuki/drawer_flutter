// ignore_for_file: deprecated_member_use

import 'package:drawer_flutter/Home.dart';
import 'package:flutter/material.dart';
import "package:drawer_flutter/Welcome/back.dart";
import 'package:flutter_svg/svg.dart';
import 'package:drawer_flutter/register.dart';
import "package:drawer_flutter/login.dart";


class Body_1 extends StatelessWidget {
  const Body_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                "assets/images/icons/login.svg",
                height: size.height * 0.35,
              ),
              SizedBox(height: size.height * 0.03),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: TextField(
                    decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "email",
                    fillColor: Colors.grey[200]),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: TextField(
                  decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "password",
                  fillColor: Colors.grey[200]),
                ),
              ),
              SizedBox(height: 20),
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
                            return Home();
                          },
                        ),
                      );
                    },
                      child: Text("SIGN UP", style : TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}
