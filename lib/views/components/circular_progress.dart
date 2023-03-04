import 'dart:math';

import 'package:flutter/material.dart';

import '../../models/constants.dart';

class CircularProgressBar extends StatelessWidget {
  final double progress; // the progress percentage (0-1)
  final double size; // the size of the circular container
  final Color color; // the main color of the circular container

  const CircularProgressBar({
    Key? key,
    required this.progress,
    required this.size,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double strokeWidth = 7.0; // the width of the progress indicator line
    bool allDone = progress == 1;

    return Container(
      width: allDone ? size + 10 : size,
      height: allDone ? size + 10 : size,
      decoration: allDone
          ? BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: color,
                  blurRadius: 5,
                ),
              ],
              shape: BoxShape.circle,
            )
          : null,
      child: allDone
          ? Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color.withOpacity(.6),
              ),
              child: const Icon(
                Icons.done_rounded,
                color: Constants.primaryWhite,
              ),
            )
          : CustomPaint(
              painter: _ProgressPainter(
                progress: progress,
                strokeWidth: strokeWidth,
                color: color,
              ),
              child: Container(
                width: size,
                height: size,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Constants.boxGreyLight,
                ),
                child: Center(
                  child: Container(
                    width: size - strokeWidth + 4.0,
                    height: size - strokeWidth + 4.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Constants.cardBackground.withOpacity(.6),
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}

class _ProgressPainter extends CustomPainter {
  final double progress;
  final double strokeWidth;
  final Color color;

  _ProgressPainter({
    required this.progress,
    required this.strokeWidth,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final double radius = size.width / 2.0;
    final double defaultProgressAngle = 2 * pi;
    final double finishedProgressAngle = 2 * pi * progress;
    final Paint defaultPaint = Paint()
      ..color = Constants.boxGreyLight
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;
    final Paint finishedPaint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    // Draw the default progress arc
    canvas.drawArc(
      Rect.fromCircle(center: Offset(radius, radius), radius: radius),
      -pi / 2.0,
      defaultProgressAngle,
      false,
      defaultPaint,
    );

    // Draw the finished progress arc
    canvas.drawArc(
      Rect.fromCircle(center: Offset(radius, radius), radius: radius),
      -pi / 2.0,
      finishedProgressAngle,
      false,
      finishedPaint,
    );
  }

  @override
  bool shouldRepaint(_ProgressPainter oldDelegate) {
    return oldDelegate.progress != progress;
  }
}
