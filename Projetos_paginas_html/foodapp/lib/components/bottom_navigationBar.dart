import 'package:flutter/material.dart';

Widget customBottomNavigationBar(Size size) {
  return Container(
    height: size.height / 18,
    width: size.width / 1.2,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    padding: const EdgeInsets.all(10),
    child: Row(
      children: [
        Expanded(
          child: Container(
            height: size.height / 20,
            width: size.width / 4.2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Row(
              children: [
                Icon(Icons.home_outlined, color: Colors.red),
                Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            child: Icon(
              Icons.wallet_giftcard,
              color: Colors.red,
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            child: Icon(
              Icons.restaurant,
              color: Colors.red,
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            child: Icon(
              Icons.notifications,
              color: Colors.red,
            ),
          ),
        ),
      ],
    ),
  );
}