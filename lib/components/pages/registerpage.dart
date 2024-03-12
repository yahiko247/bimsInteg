import 'package:bims/components/pages/loginpage.dart';
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
                const Text(
                  'B I M S',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w100,
                      fontSize: 70),
                ),
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
                RegisterButton(onTap: () {}),
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
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
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
                )),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: const Text(
                    'Sign up',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ))
        ]));
  }
}
