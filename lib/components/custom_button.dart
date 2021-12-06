import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CustomButton extends StatelessWidget {
  final Function() ontap;
  final Widget title;
  CustomButton({Key? key, required this.ontap, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      style: NeumorphicStyle(
        shadowLightColor: Colors.white,
        shadowDarkColor: Colors.grey.shade400,
        depth: 4,
        color: Colors.grey.shade200,
        boxShape: NeumorphicBoxShape.stadium(),
      ),
      onPressed: ontap,
      child: Container(
        height: 30,
        child: Center(
          child: title,
        ),
      ),
    );
  }
}
