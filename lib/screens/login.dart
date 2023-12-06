import 'dart:ui';

import 'package:cyber_rakshak/screens/Dashboard.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const String routeName = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _usernameController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: const Color.fromARGB(0, 22, 22, 34),
      body: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('src/login.png'), fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: const Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  fontSize: 36,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: const Text(
                'Let`s investigate in a fresh dimension',
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Form(
              key: formKey,
              child: Column(
                children: [
                  _buildField(
                      label: 'Username', controller: _usernameController),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildField(
                      label: 'Password', controller: _passwordController),
                  const SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.cyan,
                        fixedSize: Size(MediaQuery.of(context).size.width * 0.6,
                            MediaQuery.of(context).size.height * 0.06)),
                    onPressed: () {
                      // // if (formKey.currentState!.validate()) {
                      // //   if (_usernameController.text == "admin" &&
                      // //       _passwordController.text == "admin") {
                      Navigator.pushNamedAndRemoveUntil(
                          context, DashBoard.routename, (route) => false);
                      // //   } else {
                      // //     //show snackbar
                      // //     ScaffoldMessenger.of(context).showSnackBar(
                      // //       const SnackBar(
                      // //         content: Text("Invalid Username or Password"),
                      // //         duration: Duration(seconds: 2),
                      // //       ),
                      // //     );
                      // //   }
                      // }
                    },
                    child: const Center(
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Inter',
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildField(
      {required String label, required TextEditingController controller}) {
    return Container(
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          width: 2,
          color: Colors.white,
        ),
      ),
      child: TextField(
        obscureText: label == 'Username' ? false : true,
        // focusNode: primaryFocus,

        controller: controller,
        decoration: InputDecoration(
          icon: Padding(
            padding: const EdgeInsets.all(15.0),
            child: label == 'Username'
                ? const Icon(
                    Icons.person,
                    color: Colors.white,
                  )
                : const Icon(
                    Icons.key_rounded,
                    color: Colors.white,
                  ),
          ),
          labelText: label,
          labelStyle: const TextStyle(
            color: Colors.white,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
        style: const TextStyle(
          color: Colors.white,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
      ),
    );
  }
}
