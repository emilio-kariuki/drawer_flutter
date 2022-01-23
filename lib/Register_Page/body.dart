// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

// import 'package:flutter_auth/Screens/Signup/components/background.dart';
// import 'package:flutter_auth/Screens/Signup/components/or_divider.dart';
// import 'package:flutter_auth/Screens/Signup/components/social_icon.dart';
// import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
// import 'package:flutter_auth/components/rounded_button.dart';
// import 'package:flutter_auth/components/rounded_input_field.dart';
// import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:drawer_flutter/Register_Page/background.dart';
import 'package:drawer_flutter/Register_Page/divider.dart';
import 'package:drawer_flutter/Register_Page/social.dart';
import 'package:drawer_flutter/Home.dart';
import 'package:flutter_svg/svg.dart';

// ignore: camel_case_types
class Body_2 extends StatelessWidget {
  const Body_2({Key? key}) : super(key: key);

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
                "assets/images/icons/signup.svg",
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
                      filled: false,
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
                    filled: false,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "password",
                    fillColor: Colors.grey[200]),
                  ),
                ),
                SizedBox(height: 20),
                Card(
                  color: Colors.purple[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)
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
              OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocalIcon(
                    iconSrc: "assets/images/icons/facebook.svg",
                    press: () {},
                  ),
                  SocalIcon(
                    iconSrc: "assets/images/icons/twitter.svg",
                    press: () {},
                  ),
                  SocalIcon(
                    iconSrc: "assets/images/icons/google-plus.svg",
                    press: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
