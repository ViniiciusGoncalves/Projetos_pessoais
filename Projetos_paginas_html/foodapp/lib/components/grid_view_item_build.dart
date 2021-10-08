import 'package:flutter/material.dart';
import 'package:foodapp/grid_view.dart';

Widget gridViewItemBuild(Size size, GridViewBuilderData data) {
  return Padding(
    padding: const EdgeInsets.all(6),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            height: size.height / 7.25,
            width: size.width / 2.2,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              image: DecorationImage(
                image: AssetImage(data.imagePath!),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: size.height / 40,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                data.itemName!,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    child: Text(
                      data.description!,
                      maxLines: 3,
                      style: const TextStyle(
                        fontSize: 11,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Column(
                    children: [
                      const Icon(Icons.star, color: Colors.orange),
                      Text(
                        data.rating!,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}