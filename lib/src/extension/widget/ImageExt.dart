import 'package:flutter/material.dart';

class ImageExtension {
  /**
   * borderRadius = width / 2
   */
  Container circleImage(double width, double height, String image, Color shadowColor) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: Colors.red,
          boxShadow: [
            BoxShadow(
                blurRadius: 5.0, offset: Offset(0, 8.0), color: shadowColor),
          ],
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(width / 2)),
    );
  }
}
