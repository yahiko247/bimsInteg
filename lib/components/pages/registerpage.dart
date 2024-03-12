import 'package:bims/components/registerbut.dart';
import 'package:bims/components/textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirm = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(26, 42, 88, 1),
        body: ListView(children: [
          SafeArea(
              child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 230),
                MyTextField(
                    controller: emailController,
                    icon: Icons.person,
                    hinText: 'Email',
                    obscuretext: false),
                const SizedBox(height: 20),
                MyTextField(
                    controller: passwordController,
                    icon: Icons.lock,
                    hinText: 'Password',
                    obscuretext: true),
                const SizedBox(height: 20),
                MyTextField(
                    controller: confirm,
                    icon: Icons.lock,
                    hinText: 'Confirm',
                    obscuretext: true),
                const SizedBox(height: 10),
                RegisterButton(onTap: () {})
              ],
            ),
          ))
        ]));
  }
}
