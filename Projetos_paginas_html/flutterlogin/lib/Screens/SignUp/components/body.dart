import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterlogin/Screens/SignUp/components/background.dart';
import 'package:flutterlogin/components/rounded_button.dart';
import 'package:flutterlogin/components/rounded_input_field.dart';
import 'package:flutterlogin/components/rounded_password_field.dart';
import 'package:flutterlogin/Screens/SignUp/components/or_divider.dart';
import 'package:flutterlogin/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "SIGNUP",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset(
            "assets/icons/signup.svg",
            height: size.height * 0.31,
          ),
          RoundedInputField(
            hinText: "Your Email",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "SIGNUP",
            press: () {},
          ),
          OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SocalIcon(
                iconsrc: "assets/icons/facebook.svg",
              ),
              SocalIcon(
                iconsrc: "assets/icons/twitter.svg",
              ),
              SocalIcon(
                iconsrc: "assets/icons/google-plus.svg",
              ),
            ],
          )
        ],
      ),
    );
  }
}

class SocalIcon extends StatelessWidget {
  final String? iconsrc;
  final Function? press;
  const SocalIcon({
    this.iconsrc,
    this.press,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: kPrimaryLightColor),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            iconsrc!,
            height: 20,
            width: 20,
          ),
        ));
  }
}
