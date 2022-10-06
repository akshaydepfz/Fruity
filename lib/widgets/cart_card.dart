import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:fruity/constants/app_contsants.dart';

class CartCard extends StatelessWidget {
  final String name;
  final String image;
  final String quanity;
  CartCard(
      {Key? key,
      required this.name,
      required this.image,
      required this.quanity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      onPressed: () {},
      style: Appconst.neumorphicStyle,
      margin: EdgeInsets.all(13),
      padding: EdgeInsets.all(10),
      child: Container(
        height: 100,
        child: Row(
          children: [
            Neumorphic(
              style: Appconst.embbedNeumorphicStyle,
              child: Container(
                height: 80,
                width: 80,
                child: Image.asset(image),
              ),
            ),
            Container(
              padding: EdgeInsets.all(14),
              child: Column(
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 18, color: Colors.green),
                  ),
                  Text(
                    '\$ 12.23',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Text(
              'X$quanity',
              style: TextStyle(color: Colors.grey.shade600, fontSize: 20),
            ),
            SizedBox(
              width: 19,
            ),
          ],
        ),
      ),
    );
  }
}
