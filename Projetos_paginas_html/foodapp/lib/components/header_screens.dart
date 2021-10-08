import 'package:flutter/material.dart';

Widget header(Size size) {
  return Container(
    height: size.height / 8,
    width: size.width / 1.1,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.menu,
          color: Colors.white,
          size: 32,
        ),
        Icon(
          Icons.account_circle,
          color: Colors.white,
          size: 32,
        ),
      ],
    ),
  );
}