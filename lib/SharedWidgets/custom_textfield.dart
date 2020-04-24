import 'package:flutter/material.dart';

import '../constants.dart';
class CustomField extends StatelessWidget {
  final String hint;
  final IconData icon;

  CustomField({@required this.hint, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        cursorColor: SMainColor,
        decoration: InputDecoration(
          hintText: hint,
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
        ),
      ),
    );
  }
}
