import 'package:flutter/material.dart';

Color primaryGreen = Colors.teal;

List<BoxShadow> shadowList = [
  BoxShadow(
      color: Colors.grey.shade300, blurRadius: 30.0, offset: Offset(0, 10))
];

List<Map> categories = [
  {'name': 'Orange', 'image': 'assets/images/orange.png'},
  {'name': 'Apple', 'image': 'assets/images/apple.png'},
  {'name': 'Mango', 'image': 'assets/images/mango.png'},
  {'name': 'Pineapple', 'image': 'assets/images/pineapple.png'},
  {'name': 'Watermelon', 'image': 'assets/images/watermelon.png'},
  {'name': 'Grape', 'image': 'assets/images/grape.png'},
];
List<Map> drawerItems = [
  {'icon': Icons.mail, 'title': 'Adoption'},
  {'icon': Icons.monetization_on, 'title': 'Donation'},
  {'icon': Icons.mail, 'title': 'Add pet'},
  {'icon': Icons.favorite, 'title': 'Favorites'},
  {'icon': Icons.mail, 'title': 'Messages'},
  {'icon': Icons.mail, 'title': 'Profile'},
];
