import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:fruity/constants/app_contsants.dart';

class CustomButton extends StatelessWidget {
  final Function() ontap;
  final Widget title;
  CustomButton({Key? key, required this.ontap, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      style: NeumorphicStyle(
        intensity: 100,
        depth: 3,
        color: Appconst.BackgroundColor,
        shadowLightColor: Color.fromRGBO(243, 243, 245, 1),
        shadowDarkColor: Color.fromRGBO(195, 196, 201, 1),
        boxShape: NeumorphicBoxShape.stadium(),
      ),
      onPressed: ontap,
      child: Container(
        height: 30,
        child: Center(child: title),
      ),
    );
  }
}
