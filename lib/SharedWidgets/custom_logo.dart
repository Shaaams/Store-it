import 'package:flutter/material.dart';

class CustomLogo extends StatelessWidget {
  final String title;
  final double customHeight;
  final String fontFamily;
  final double fontSize;
  final String imagePath;


  CustomLogo({@required this.title, @required this.customHeight, @required this.fontFamily, @required this.fontSize, @required this.imagePath});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height ;
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Container(
        height: height * this.customHeight,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Image(image: AssetImage(this.imagePath)),
            Positioned(
              bottom: 0,
              child: Text(
                title,
                style: TextStyle(
                  fontFamily: this.fontFamily,
                  fontSize: this.fontSize,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
