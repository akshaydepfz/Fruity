import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:fruity/widgets/cart_card.dart';
import 'package:fruity/components/custom_icon.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIcon(
                    icon: Icons.arrow_back,
                    ontap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return CartCard();
                    })),
            Neumorphic(
              style: NeumorphicStyle(
                depth: 3,
                boxShape: NeumorphicBoxShape.roundRect(
                  BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                color: Colors.grey.shade200,
              ),
              child: Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                color: Colors.grey.shade200,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Subtotal :',
                          style: TextStyle(
                              color: Colors.green.shade400, fontSize: 15),
                        ),
                        Text(
                          '\$ 25.90',
                          style: TextStyle(color: Colors.green, fontSize: 15),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery Charge :',
                          style: TextStyle(
                              color: Colors.green.shade400, fontSize: 15),
                        ),
                        Text(
                          '\$ 5',
                          style: TextStyle(color: Colors.green, fontSize: 15),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total :',
                          style: TextStyle(
                              color: Colors.green.shade400, fontSize: 16),
                        ),
                        Text(
                          '\$ 30.90',
                          style: TextStyle(color: Colors.green, fontSize: 15),
                        )
                      ],
                    ),
                    NeumorphicButton(
                      style: NeumorphicStyle(
                          color: Colors.grey.shade200, depth: 3),
                      onPressed: () {},
                      child: Container(
                        height: 25,
                        width: 120,
                        child: Center(
                          child: Text(
                            'Checkout',
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
