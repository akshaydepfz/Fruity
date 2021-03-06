import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CustomtextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData icon;
  const CustomtextField(
      {Key? key,
      required this.controller,
      required this.hintText,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        depth: -3,
        boxShape: NeumorphicBoxShape.stadium(),
        shadowDarkColorEmboss: Colors.grey.shade400,
        shadowLightColorEmboss: Colors.white,
        color: Colors.grey.shade200,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: TextField(
        controller: controller,
        style: TextStyle(color: Colors.grey.shade700),
        decoration: InputDecoration(
          icon: Icon(
            icon,
            size: 18,
            color: Colors.green,
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey.shade500),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
