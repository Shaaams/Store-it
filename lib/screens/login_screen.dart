import 'package:flutter/material.dart';
import 'package:storeit/SharedWidgets/custom_logo.dart';
import 'package:storeit/SharedWidgets/custom_textfield.dart';
import 'package:storeit/constants.dart';
import 'package:storeit/screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  static String id ='LoginScreen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            imagePath: 'images/icons/shop100.png',
          ),
          SizedBox(
            height: height * 0.1,
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
                'Login',
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
                'Don\'t Have An Account ?  ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, SignUpScreen.id);
                },
                child: Text(
                  'Sign up',
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


