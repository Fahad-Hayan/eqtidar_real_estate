import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  const Label({Key? key, required this.label}) : super(key: key);
  final String label;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 32),
        Text(
          label,
          // textAlign: TextAlign.left,
          style: const TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}
