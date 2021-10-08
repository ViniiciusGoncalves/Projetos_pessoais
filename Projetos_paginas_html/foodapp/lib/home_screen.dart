import 'package:flutter/material.dart';
import 'package:foodapp/grid_view.dart';
import 'package:foodapp/components/grid_view_item_build.dart';
import 'package:foodapp/components/bottom_navigationBar.dart';
import 'package:foodapp/components/heading_text.dart';
import 'package:foodapp/components/header_screens.dart';
import 'package:foodapp/components/text_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      color: Colors.red.shade500,
      child: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.red.shade500,
            body: Container(
              height: size.height,
              width: size.width,
              child: Column(
                children: [
                  header(size),
                  Container(
                    width: size.width / 1.1,
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: TextSpan(
                        text: "Bom dia,\n",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                        children: <TextSpan>[
                          TextSpan(
                            text: "Vinicius Gonçalves",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height / 30,
                  ),
                  customTextField(size),
                  SizedBox(
                    height: size.height / 50,
                  ),
                  headingText(size),
                  Expanded(
                    child: SizedBox(
                      width: size.width / 1.1,
                      child: GridView.builder(
                        itemCount: 4,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          return gridViewItemBuild(size, data[index]);
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            bottomNavigationBar: Container(
              height: size.height / 13,
              width: size.width,
              alignment: Alignment.topCenter,
              child: customBottomNavigationBar(size),
            )),
      ),
    );
  }
}



