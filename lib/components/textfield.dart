import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hinText;
  final bool obscuretext;
  final bool? disableInput;
  final IconData? icon;

  const MyTextField({
    Key? key,
    required this.controller,
    required this.hinText,
    required this.obscuretext,
    this.disableInput,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        enabled: !(disableInput ?? false),
        controller: controller,
        obscureText: obscuretext,
        decoration: InputDecoration(
            prefixIcon: icon != null ? Icon(icon) : null,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                  color:
                      Colors.blue), // Customize the color of the focused border
            ),
            fillColor: Colors.white,
            filled: true,
            hintText: hinText,
            hintStyle: const TextStyle(color: Colors.black)),
      ),
    );
  }
}
