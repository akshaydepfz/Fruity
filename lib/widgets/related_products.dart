import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class RelatedProduct extends StatelessWidget {
  const RelatedProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      margin: EdgeInsets.symmetric(vertical: 2, horizontal: 6),
      padding: EdgeInsets.all(0),
      onPressed: () {},
      style: NeumorphicStyle(depth: 3),
      child: Container(
        color: Colors.grey.shade200,
        height: 120,
        width: 140,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              width: 50,
              child: Image.asset(
                'assets/images/orange.png',
                fit: BoxFit.cover,
              ),
            ),
            Text(
              'Orange',
              style: TextStyle(color: Colors.blueGrey),
            ),
          ],
        ),
      ),
    );
  }
}
