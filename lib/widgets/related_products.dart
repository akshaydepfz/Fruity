import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:fruity/constants/app_contsants.dart';

class RelatedProduct extends StatelessWidget {
  final String name;
  final String image;
  final Function() onTap;
  RelatedProduct(
      {Key? key, required this.name, required this.image, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      margin: EdgeInsets.symmetric(vertical: 2, horizontal: 6),
      padding: EdgeInsets.all(0),
      onPressed: onTap,
      style: Appconst.neumorphicStyle,
      child: Container(
        height: 120,
        width: 140,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              width: 50,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              name,
              style: TextStyle(color: Colors.blueGrey),
            ),
          ],
        ),
      ),
    );
  }
}
