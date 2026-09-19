import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String initials;
  final double size;
  final Color? background;
  final Color? textColor;

  const Avatar({
    super.key,
    required this.initials,
    this.size = 40,
    this.background,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: background ?? const Color(0xFF4F46E5),
      ),
      child: Center(
        child: Text(
          initials,
          style: TextStyle(
            color: textColor ?? Colors.white,
            fontSize: size * 0.38,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
