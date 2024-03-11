import 'package:flutter/material.dart';

// Headding
class Headding extends StatelessWidget {
  const Headding(
      {super.key,
      required this.text,
      required this.fontSize,
      required this.fontWeight});
  final String text;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: text,
        style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: Theme.of(context).primaryColorLight),
      ),
    );
  }
}

// Title
class Title extends StatelessWidget {
  const Title({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
