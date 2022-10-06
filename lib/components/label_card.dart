import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:fruity/constants/app_contsants.dart';

class TileCard extends StatelessWidget {
  final String label;
  final Color color;
  final IconData icon;
  const TileCard(
      {Key? key, required this.label, required this.color, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: Appconst.neumorphicStyle,
      child: Container(
        width: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: color,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              label,
              style: TextStyle(color: Colors.grey.shade500),
            ),
          ],
        ),
      ),
    );
  }
}
