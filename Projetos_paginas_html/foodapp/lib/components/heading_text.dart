import 'package:flutter/material.dart';

Widget headingText(Size size) {
  return SizedBox(
    height: size.height / 20,
    width: size.width / 1.1,
    child: Row(
      children: [
        SizedBox(
          width: size.width / 4,
          child: Divider(
            color: Colors.red.shade900,
            thickness: 1.5,
          ),
        ),
        Text(
          "O que nós recomendamos !!",
          style: TextStyle(
            fontSize: 12.5,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          width: size.width / 4,
          child: Divider(
            color: Colors.red.shade900,
          ),
        ),
        Expanded(
            child: Divider(
          color: Colors.red,
          thickness: 1.5,
        ))
      ],
    ),
  );
}