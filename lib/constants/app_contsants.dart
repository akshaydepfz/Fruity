import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Appconst {
  static const Color BackgroundColor = Color.fromRGBO(230, 231, 238, 1);
  static Color Tcolor = Colors.green.shade400;
  static const NeumorphicStyle neumorphicStyle = NeumorphicStyle(
    depth: 3,
    color: Color.fromRGBO(230, 231, 238, 1),
    intensity: 100,
    shadowLightColorEmboss: Color.fromRGBO(243, 243, 245, 1),
    shadowDarkColorEmboss: Color.fromRGBO(195, 196, 201, 1),
  );
  static const NeumorphicStyle embbedNeumorphicStyle = NeumorphicStyle(
    color: Color.fromRGBO(230, 231, 238, 1),
    intensity: 100,
    depth: -2,
    shadowDarkColorEmboss: Color.fromRGBO(243, 243, 245, 1),
    shadowLightColorEmboss: Color.fromRGBO(195, 196, 201, 1),
  );
}
