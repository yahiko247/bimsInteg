import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final Color color;
  final String text;

  GridItem({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      margin: const EdgeInsets.all(8),
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.only(top: 60, left: 12),
          child: Text(
            text,
            textAlign: TextAlign.start,
            style: const TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
