import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ProductcardNew extends StatelessWidget {
  final Function() ontap;
  final String productName;
  final String productImage;
  const ProductcardNew(
      {Key? key,
      required this.ontap,
      required this.productName,
      required this.productImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      margin: EdgeInsets.all(10),
      style: NeumorphicStyle(
        depth: 2,
        color: Colors.grey.shade200,
      ),
      onPressed: ontap,
      child: Container(
        color: Colors.grey.shade200,
        height: 100,
        width: double.infinity,
        child: Row(
          children: [
            Neumorphic(
              style: NeumorphicStyle(
                depth: 1,
                color: Colors.grey.shade200,
              ),
              child: Container(
                height: 95,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  image: DecorationImage(
                    image: AssetImage(productImage),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Text(
                    '\$ 25 / Kg',
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                  Text(
                    '15% Off',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}