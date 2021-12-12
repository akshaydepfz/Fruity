import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:fruity/screens/payment_screen.dart';
import 'package:get/get.dart';
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
                  CustomIcon(icon: Icons.delete_outline, ontap: () {})
                ],
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return FadeInDown(
                          duration: Duration(milliseconds: 1500),
                          child: CartCard());
                    })),
            FadeInUp(
              child: Neumorphic(
                style: NeumorphicStyle(
                  depth: 3,
                  boxShape: NeumorphicBoxShape.roundRect(
                    BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  color: Colors.grey.shade200,
                ),
                child: Container(
                  padding: EdgeInsets.all(15),
                  width: double.infinity,
                  color: Colors.green,
                  child: Column(
                    children: [
                      Container(
                        width: 120,
                        height: 2,
                        color: Colors.green.shade200,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Subtotal :',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '\$ 25.90',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Delivery Charge :',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '\$ 5',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total :',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '\$ 30.90',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      NeumorphicButton(
                        style: NeumorphicStyle(
                            color: Colors.grey.shade200, depth: 3),
                        onPressed: () {
                          Get.to(PaymentScreen());
                        },
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
