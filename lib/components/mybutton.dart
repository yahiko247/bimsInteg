import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  const MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 150,
        height: 70,
        child: Container(
          padding: const EdgeInsets.all(25),
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color.fromRGBO(6, 31, 70, 1),
                    Color.fromRGBO(42, 63, 135, 1)
                  ]),
              borderRadius: BorderRadius.circular(50)),
          child: const Center(
            child: Text(
              'Sign In',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
