// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:portfolioapp/styles/colors.dart';

class PrimaryText extends StatelessWidget {
  final Color color;
  final FontWeight fontWeight;
  final double height;
  final double size;
  final String text;

  const PrimaryText({
    Key? key,
    required this.text,
    this.color = AppColors.primary,
    this.fontWeight = FontWeight.w400,
    this.height = 1.3,
    this.size = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        height: height,
        fontFamily: 'Roboto',
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}
