import 'package:flutter/material.dart';

class CustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    // Start from top left
    path.lineTo(0, size.height);

    // Bottom left curve
    final firstCurve = Offset(0, size.height - 25);
    final lastCurve = Offset(30, size.height - 25);
    path.quadraticBezierTo(
      firstCurve.dx,
      firstCurve.dy,
      lastCurve.dx,
      lastCurve.dy,
    );

    // Straight line across the bottom
    path.lineTo(size.width - 30, size.height - 25);

    // Bottom right curve
    final thirdFirstCurve = Offset(size.width, size.height - 25);
    final thirdLastCurve = Offset(size.width, size.height);
    path.quadraticBezierTo(
      thirdFirstCurve.dx,
      thirdFirstCurve.dy,
      thirdLastCurve.dx,
      thirdLastCurve.dy,
    );

    // Line up the right side to top right
    path.lineTo(size.width, 0);

    // Close the path
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}