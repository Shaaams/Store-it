import 'package:flutter/material.dart';
import 'package:storeit/SharedWidgets/custom_logo.dart';
import 'package:storeit/SharedWidgets/custom_textfield.dart';
import 'package:storeit/screens/login_screen.dart';

import '../constants.dart';

class SignUpScreen extends StatelessWidget {
  static String id='SignUpScreen';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: SMainColor,
      body: ListView(
        children: <Widget>[
          CustomLogo(
            title: 'Store it',
            customHeight: 0.17,
            fontFamily: 'Pacifico',
            fontSize: 25.0,
          ),
          SizedBox(
            height: height * 0.05,
          ),
          CustomField(
            hint: 'Enter Your Name',
            icon: Icons.person,
          ),
          SizedBox(
            height: height * 0.02,
          ),
          CustomField(
            hint: 'Enter Your Email',
            icon: Icons.email,
          ),
          SizedBox(
            height: height * 0.02,
          ),
          CustomField(
            hint: 'Enter Your Password',
            icon: Icons.lock,
          ),
          SizedBox(
            height: height * 0.02,
          ),
          CustomField(
            hint: 'Confirm Password',
            icon: Icons.lock,
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120),
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.black,
              child: Text(
                'Sign up',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: (){

              },
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Do Have An Account ?  ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, LoginScreen.id);
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
