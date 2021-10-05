import 'package:flutter/material.dart';
import 'package:flutterlogin/constants.dart';
import 'package:flutterlogin/components/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String? hinText;
  final IconData? icon;
  final ValueChanged<String>? onChanged;
  const RoundedInputField(
      {Key? key, this.hinText, this.icon = Icons.person, this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: Colors.red,
            ),
            hintText: hinText,
            border: InputBorder.none),
      ),
    );
  }
}