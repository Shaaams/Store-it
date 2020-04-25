import 'package:flutter/material.dart';

import 'package:storeit/constants.dart';

class CustomField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final Function customValidate;
  final bool autoValidate;
  final bool enabled;
  final bool isPassword;
  final bool isEmail;
  final TextEditingController controller;

  CustomField(
      {@required this.hint,
      @required this.icon,
      this.customValidate,
      this.autoValidate = false,
      this.enabled = true,
      this.controller,
      this.isEmail = false,
      this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        controller: controller,
        obscureText: isPassword ? true : false,
        enabled: enabled,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
        autovalidate: this.autoValidate,
        validator: this.customValidate,
        cursorColor: SMainColor,
        decoration: InputDecoration(
          hintText: hint,
          errorStyle: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold
          ),
          hintStyle: TextStyle(
            fontSize: 15,
            color: SMainColor,
            fontFamily: 'Pacifico',
            fontWeight: FontWeight.bold,
          ),
          prefixIcon: Icon(
            icon,
            color: SMainColor,
          ),
          fillColor: STextField,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
