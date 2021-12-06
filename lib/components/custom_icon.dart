import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CustomIcon extends StatelessWidget {
  final IconData icon;
  final Function() ontap;

  CustomIcon({Key? key, required this.icon, required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      onPressed: ontap,
      style: NeumorphicStyle(
          depth: 4,
          color: Colors.grey.shade200,
          shape: NeumorphicShape.flat,
          shadowLightColor: Colors.white,
          shadowDarkColor: Colors.grey.shade500,
          boxShape: NeumorphicBoxShape.circle()),
      padding: const EdgeInsets.all(12.0),
      child: Center(
        child: Icon(
          icon,
          color: Colors.green.shade400,
        ),
      ),
    );
  }
}
