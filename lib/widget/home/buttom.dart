import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Circle

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.4955250, size.height * 0.0119200);
    path_0.cubicTo(
        size.width * 0.5485625,
        size.height * 0.0117000,
        size.width * 0.9758000,
        size.height * -0.1119800,
        size.width * 0.6262625,
        size.height * 0.2177600);
    path_0.cubicTo(
        size.width * 0.5515250,
        size.height * 0.3971600,
        size.width * 0.6783875,
        size.height * 0.7163800,
        size.width * 0.4968375,
        size.height * 0.6888600);
    path_0.cubicTo(
        size.width * 0.2613125,
        size.height * 0.7251200,
        size.width * 0.4165750,
        size.height * 0.4119600,
        size.width * 0.3136000,
        size.height * 0.1990600);
    path_0.cubicTo(
        size.width * 0.0546000,
        size.height * -0.1403200,
        size.width * 0.4027375,
        size.height * 0.0123800,
        size.width * 0.4955250,
        size.height * 0.0119200);
    path_0.close();

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
