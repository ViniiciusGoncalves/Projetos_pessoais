import 'package:flutter/material.dart';
import 'package:flutterlogin/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool? login;
  final Function? press;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    this.press
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
        login! ?  "Don´t have an Account?" : "Already have an Account?",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
          login! ?  " Sign Up" : "Sign In",
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
