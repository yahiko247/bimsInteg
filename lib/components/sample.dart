import 'package:flutter/material.dart';

class GridBox2 extends StatelessWidget {
  const GridBox2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Container(
              height: 115,
              width: 180,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(244, 212, 45, 1),
                  borderRadius: BorderRadius.circular(15)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Container(
              height: 115,
              width: 180,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(40, 125, 105, 1),
                  borderRadius: BorderRadius.circular(15)),
            ),
          ),
        ],
      ),
    );
  }
}
