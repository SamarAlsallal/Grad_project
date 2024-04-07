import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyEmailTextFiled extends StatelessWidget {
  const MyEmailTextFiled({
    super.key,
    required this.lenel_text,
    required this.hint_text,
    required this.enable,
  });
  final String lenel_text;
  final String hint_text;
  final bool enable;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: lenel_text,
          hintText: hint_text,
          enabled: enable,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffEEEEEE)),
            borderRadius: BorderRadius.all(Radius.circular(15)), //white
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
        ),
      ),
    );
  }
}
