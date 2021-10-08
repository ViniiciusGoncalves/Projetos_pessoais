import 'package:flutter/material.dart';

Widget customTextField(Size size) {
  return Material(
      elevation: 3,
      color: Colors.black,
      borderRadius: BorderRadiusDirectional.circular(20),
      child: Container(
        height: size.height / 16,
        width: size.width / 1.14,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Encontre seu lanche",
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
            Icon(
              Icons.search,
              color: Colors.black,
            )
          ],
        ),
      ));
}