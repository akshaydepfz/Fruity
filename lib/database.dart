import 'package:flutter/material.dart';

Color primaryGreen = Colors.teal;

List<BoxShadow> shadowList = [
  BoxShadow(
      color: Colors.grey.shade300, blurRadius: 30.0, offset: Offset(0, 10))
];

List<Map> categories = [
  {'name': 'Orange', 'image': 'assets/images/orange.png', 'tag': '1'},
  {'name': 'Apple', 'image': 'assets/images/apple.png', 'tag': '2'},
  {'name': 'Mango', 'image': 'assets/images/mango.png', 'tag': '3'},
  {'name': 'Pineapple', 'image': 'assets/images/pineapple.png', 'tag': '4'},
  {'name': 'Watermelon', 'image': 'assets/images/watermelon.png', 'tag': '5'},
  {'name': 'Grape', 'image': 'assets/images/grape.png', 'tag': '6'},
];
List<Map> drawerItems = [
  {'icon': Icons.mail, 'title': 'Adoption'},
  {'icon': Icons.monetization_on, 'title': 'Donation'},
  {'icon': Icons.mail, 'title': 'Add pet'},
  {'icon': Icons.favorite, 'title': 'Favorites'},
  {'icon': Icons.mail, 'title': 'Messages'},
  {'icon': Icons.mail, 'title': 'Profile'},
];
