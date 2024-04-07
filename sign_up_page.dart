import 'package:flutter/material.dart';
import 'package:unisafe/components/myemail_textfiled.dart';
import 'package:unisafe/components/mypass_textfild.dart';
import 'package:unisafe/pages/bottomNavigation.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  void signUserIn() {}

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, //to avoid bottom overflow exeption
      //backgroundColor: Color.fromARGB(255, 207, 205, 205),
      backgroundColor: const Color.fromARGB(255, 224, 222, 222),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'uniSafe',
            style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                //fontStyle: FontStyle.italic,
                color: Color(0xff0095FF)),
          ),
          const Text(
            'Let\'s get started!',
            style: TextStyle(
              color: Color(0xffB2B2B2),
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'create an account',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 163, 161, 161),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const MyEmailTextFiled(
            lenel_text: 'Student Name',
            hint_text: 'Your Name',
            enable: false,
          ),
          const SizedBox(
            height: 12,
          ),
          const MyEmailTextFiled(
            lenel_text: 'ID',
            hint_text: 'Your Id',
            enable: false,
          ),
          const SizedBox(
            height: 12,
          ),
          const MyEmailTextFiled(
            lenel_text: 'Phone',
            hint_text: 'Enter Your Number',
            enable: true,
          ),
          const SizedBox(
            height: 12,
          ),
          const MyEmailTextFiled(
            lenel_text: 'Email',
            hint_text: 'Enter Your Email',
            enable: true,
          ),
          const SizedBox(
            height: 12,
          ),
          const MyPassTextFiled(
              label_text: 'Password', hint_text: 'Enter Your pass'),
          const SizedBox(
            height: 12,
          ),
          const MyPassTextFiled(
              label_text: 'Confirom Password', hint_text: 'Enter your Pass'),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const bottomNavigation()),
              );
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff0095FF),
                fixedSize: const Size(130, 30)),
            child: const Text(
              'Sign-Up',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
