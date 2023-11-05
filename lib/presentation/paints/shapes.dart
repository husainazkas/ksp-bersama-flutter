import 'package:flutter/material.dart';

class SimpleShape1 extends CustomPainter {
  const SimpleShape1({super.repaint, required this.color});

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();
    path.moveTo(0.0, size.height * 0.8);
    path.quadraticBezierTo(
        size.width * 1.1, size.height * 1.1, size.width * 0.75, 0.0);
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.close();

    canvas.drawPath(path, Paint()..color = color);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class SimpleShape2 extends CustomPainter {
  const SimpleShape2({super.repaint, required this.color});

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final length = size.width * 0.25;
    final padding = length.clamp(20.0, 36.0);

    final path1 = Path();
    path1.lineTo(size.width, 0.0);
    path1.lineTo(size.width, length);
    path1.quadraticBezierTo(
      size.width - padding,
      length,
      size.width - padding,
      length - padding,
    );
    path1.quadraticBezierTo(
      size.width,
      padding / 2,
      size.width - length,
      padding / 2,
    );
    path1.lineTo(0.0, padding / 2);
    path1.close();

    final path2 = Path();
    path2.moveTo(0.0, size.height - length);
    path2.lineTo(0.0, size.height);
    path2.lineTo(length, size.height);
    path2.quadraticBezierTo(0.0, size.height, 0.0, size.height - length);
    path2.close();

    final paint = Paint()..color = color;
    canvas.drawPath(path1, paint);
    canvas.drawPath(path2, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
