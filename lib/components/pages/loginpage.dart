import 'package:bims/components/myButton.dart';
import 'package:bims/components/pages/registerpage.dart';
import 'package:bims/components/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(26, 43, 88, 1),
      body: ListView(
        children: [
          SafeArea(
              child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 230,
                ),
                const Text(
                  'B I M S',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w100,
                    fontSize: 70,
                  ),
                ),
                const SizedBox(height: 20),
                MyTextField(
                    controller: emailController,
                    icon: Icons.person,
                    hinText: 'Username',
                    obscuretext: false),
                const SizedBox(height: 20),
                MyTextField(
                    controller: passController,
                    icon: Icons.lock,
                    hinText: 'Password',
                    obscuretext: true),
                const SizedBox(height: 20),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Remember me ',
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(width: 30),
                        MyButton(
                          onTap: () {},
                        ),
                      ]),
                ),
                const SizedBox(height: 20),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 100,
                          child: const Divider(
                            color: Colors.white,
                            thickness: 2,
                          ),
                        ),
                        const SizedBox(width: 20),
                        const Text(
                          'Create With',
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(width: 20),
                        Container(
                          width: 100,
                          child: const Divider(
                            color: Colors.white,
                            thickness: 2,
                          ),
                        ),
                      ]),
                ),
                const SizedBox(height: 20),
                Container(
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.facebook,
                        color: Color.fromRGBO(16, 170, 140, 1),
                      ),
                      SizedBox(width: 50),
                      Icon(
                        Icons.email,
                        color: Color.fromRGBO(16, 170, 140, 1),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterPage()));
                  },
                  child: const Text(
                    'Register here',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
