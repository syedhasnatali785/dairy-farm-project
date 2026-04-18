import 'package:flutter/material.dart';

class Ctextfields extends StatelessWidget {
  const Ctextfields({
    super.key,
    required this.ftitle,
    required this.flabel,
    this.prefixicon,
    this.isPassword = false,
    this.controller,
    this.validator,
    this.textinputtype,
    this.suffix,
  });
  final String ftitle;
  final String flabel;
  final Widget? prefixicon;
  final bool isPassword;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? textinputtype;
  final Widget? suffix;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      obscureText: isPassword,
      keyboardType: textinputtype,
      decoration: InputDecoration(
        filled: true,

        labelText: flabel,
        labelStyle: TextStyle(color: Colors.grey),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: Color.fromARGB(255, 255, 255, 255),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 14),
          child: prefixicon,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: ftitle,
        suffixIcon: suffix,
        hintStyle: TextStyle(color: Colors.grey),
      ),
    );
  }
}
