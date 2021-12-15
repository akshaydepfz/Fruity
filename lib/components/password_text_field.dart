import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class PasswordTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData icon;
  final Function() iconTap;
  final bool obsureText;
  const PasswordTextField(
      {Key? key,
      required this.controller,
      required this.hintText,
      required this.icon,
      required this.obsureText,
      required this.iconTap})
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
        obscureText: obsureText,
        controller: controller,
        style: TextStyle(color: Colors.grey.shade700),
        decoration: InputDecoration(
          suffixIcon: IconButton(
            splashRadius: 1,
            icon: obsureText
                ? Icon(Icons.visibility_off)
                : Icon(Icons.visibility),
            onPressed: iconTap,
          ),
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
