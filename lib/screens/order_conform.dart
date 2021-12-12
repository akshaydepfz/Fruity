import 'package:flutter/material.dart';
import 'package:fruity/screens/home_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';

class OrderConform extends StatelessWidget {
  const OrderConform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GestureDetector(
          onTap: () {
            Get.to(HomeScreen());
          },
          child: Center(
            child: Lottie.asset('assets/images/ordercompleted.json'),
          ),
        ),
      ),
    );
  }
}
