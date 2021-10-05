import 'package:flutter/material.dart';
import 'package:flutterlogin/Screens/Login/login_screen.dart';
import 'package:flutterlogin/Screens/Welcome/components/background.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterlogin/constants.dart';
import 'package:flutterlogin/components/rounded_button.dart';
import 'package:flutterlogin/Screens/Login/login_screen.dart';
import 'package:flutterlogin/Screens/SignUp/signup_screem.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //Altura e largura total de nossa tela
    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Bem vindo Vinicius",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
          SizedBox(
            height: size.height * 0.05,
          ),
          SvgPicture.asset(
            "assets/icons/chat.svg",
            height: size.height * 0.4,
          ),
          SizedBox(
            height: size.height * 0.07,
          ),
          Container(
            color: Colors.transparent,
            width: size.height * 0.40,
            height: 55,
            child: FlatButton(
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
              color: Colors.red,
              child: Text(
                "LOGIN",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Container(
            color: Colors.transparent,
            width: size.height * 0.40,
            height: 55,
            child: FlatButton(
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreem();
                    },
                  ),
                );
              },
              color: Colors.redAccent,
              child: Text(
                "SIGN UP",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
