import 'package:flutter/material.dart';
import 'package:flutterlogin/constants.dart';

class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      width: size.width * 0.8,
      child: Row(
        children: <Widget>[
          buildDivider(),
          Text(
            "OR",
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600),
          ),
          buildDivider()
        ],
      ),
    );
  }

  Expanded buildDivider() {
    return Expanded(
      child: Divider(
        color: Color(0xFFD9D9D9),
        height: 1.5,
      ),
    );
  }
}
