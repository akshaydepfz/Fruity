import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CartCard extends StatelessWidget {
  const CartCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      onPressed: () {},
      style: NeumorphicStyle(color: Colors.grey.shade200),
      margin: EdgeInsets.all(13),
      padding: EdgeInsets.all(10),
      child: Container(
        height: 100,
        child: Row(
          children: [
            Neumorphic(
              style: NeumorphicStyle(
                  depth: -3,
                  color: Colors.grey.shade200,
                  shadowLightColorEmboss: Colors.grey.shade200),
              child: Container(
                height: 80,
                width: 80,
                child: Image.asset('assets/images/orange.png'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(14),
              child: Column(
                children: [
                  Text(
                    'Orange',
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
              'X2',
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
