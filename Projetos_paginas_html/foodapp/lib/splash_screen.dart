import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
        color: Colors.red.shade800,
        child: SafeArea(
          child: Scaffold(
            body: Container(
              height: size.height,
              width: size.width,
              child: Column(
                children: [
                  Container(
                    height: size.height / 3,
                    width: size.width,
                    child: Stack(
                      children: [
                        Container(
                          height: size.height / 6,
                          width: size.height / 3.4,
                          decoration: BoxDecoration(
                              color: Colors.red.shade800,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(180))),
                        ),
                        Positioned(
                          bottom: 10,
                          left: 0,
                          child: Container(
                            height: size.height / 4.5,
                            width: size.height / 6,
                            decoration: BoxDecoration(
                                color: Colors.red.shade800,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(100),
                                    bottomRight: Radius.circular(180))),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height / 30,
                  ),
                  const Text(
                    "Food App",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: size.height / 15,
                  ),
                  Container(
                    height: size.height / 100,
                    width: size.width / 2.4,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.red.shade800, width: 1.5),
                        borderRadius: BorderRadius.circular(20)),
                    child: LinearProgressIndicator(
                        backgroundColor: Colors.white,
                        color: Colors.red.shade800),
                  ),
                  SizedBox(
                    height: size.height / 50,
                  ),
                  Text(
                    "' Rapido e efetivo '",
                    style: TextStyle(fontSize: 15, color: Colors.red.shade800),
                  ),
                  SizedBox(
                    height: size.height / 300,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/hamburguer.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
