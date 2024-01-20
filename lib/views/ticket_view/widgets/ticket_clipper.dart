import 'package:flutter/material.dart';

class TicketClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.addRect(Rect.fromLTWH(0, 0, size.width, size.height));

    path.addOval(
        Rect.fromCircle(center: Offset(0, size.height / 2), radius: 21.0));

    path.addOval(
      Rect.fromCircle(
          center: Offset(size.width, size.height / 2), radius: 21.0),
    );
    path.fillType = PathFillType.evenOdd;
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
