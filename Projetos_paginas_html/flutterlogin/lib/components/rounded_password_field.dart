import 'package:flutter/material.dart';
import 'package:flutterlogin/components/text_field_container.dart';
import 'package:flutterlogin/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  const RoundedPasswordField({Key? key, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: Colors.red
          ),
          suffix: Icon(
            Icons.visibility,
            color: Colors.redAccent,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
