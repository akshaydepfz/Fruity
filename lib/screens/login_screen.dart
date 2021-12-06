import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:fruity/screens/home_screen.dart';
import 'package:fruity/components/textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Colors.green.shade100,
              ),
            ),
            Container(
              color: Color(0xFFFFFEF7),
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 18,
                  ),
                  NeumorphicText(
                    'Buy Groceries Easily With Us..',
                    style: NeumorphicStyle(
                      color: Colors.green.shade300,
                    ),
                    textStyle: NeumorphicTextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Continue where you left off',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.green.shade200,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    hintText: 'Your email here',
                    controller: email,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CustomTextField(
                    hintText: 'Your password here',
                    controller: email,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'forgot your password?',
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                  NeumorphicButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.flat,
                        shadowLightColor: Colors.white70,
                        shadowDarkColor: Colors.grey.shade400,
                        boxShape: NeumorphicBoxShape.stadium()),
                    padding: const EdgeInsets.all(12.0),
                    child: Center(
                      child: Text(
                        'Sign In',
                        style: TextStyle(color: Colors.green.shade300),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
