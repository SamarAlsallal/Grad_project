import 'package:flutter/material.dart';

class MyPassTextFiled extends StatefulWidget {
  final String label_text;
  final String hint_text;

  const MyPassTextFiled({
    Key? key,
    required this.label_text,
    required this.hint_text,
  }) : super(key: key);

  @override
  State<MyPassTextFiled> createState() => _MyPassTextFiledState();
}

class _MyPassTextFiledState extends State<MyPassTextFiled> {
  // Initially password is obscure
  bool _passwordVisible = false;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextFormField(
        keyboardType: TextInputType.number,
        obscureText: !_passwordVisible, //This will obscure text dynamically
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffEEEEEE)),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          labelText: widget.label_text, // Accessing label_text from widget
          hintText: widget.hint_text, // Accessing hint_text from widget
          // Here is key idea
          suffixIcon: IconButton(
            icon: Icon(
              // Based on passwordVisible state choose the icon
              _passwordVisible ? Icons.visibility : Icons.visibility_off,
              color: const Color(0xff0095FF),
            ),
            onPressed: () {
              // Update the state i.e. toggle the state of passwordVisible variable
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
          ),
        ),
      ),
    );
  }
}
