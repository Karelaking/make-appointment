import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input(
      {super.key,
      required this.hintTitle,
      required this.label,
      required this.icon, this.maxLines = 1});
  final String hintTitle;
  final String label;
  final Icon icon;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.top,
        maxLines: maxLines,
        decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))),
            hintText: hintTitle,
            label: Text(label),
            prefixIcon: icon),
      ),
    );
  }
}
