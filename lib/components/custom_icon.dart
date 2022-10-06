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
          color: Color.fromRGBO(230, 231, 238, 1),
          intensity: 100,
          depth: 5,
          shadowLightColor: Color.fromRGBO(243, 243, 245, 1),
          shadowDarkColor: Color.fromRGBO(195, 196, 201, 1),
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
