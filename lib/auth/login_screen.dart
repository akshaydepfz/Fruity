import 'dart:ui';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:fruity/components/custom_button.dart';
import 'package:fruity/components/password_text_field.dart';
import 'package:fruity/components/password_text_field.dart';
import 'package:fruity/components/password_text_field.dart';
import 'package:fruity/screens/home_screen.dart';
import 'package:get/get.dart';
import '../components/textfield.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  bool _isLoading = false;
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: FadeInDown(
                  duration: Duration(seconds: 2),
                  child: Text(
                    'Hey,\nWelcome Back',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FadeInDown(
                duration: Duration(seconds: 2),
                child: NeumorphicButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () {},
                  style: NeumorphicStyle(
                    depth: 3,
                    color: Colors.grey.shade200,
                    boxShape: NeumorphicBoxShape.circle(),
                  ),
                  child: Container(
                    height: 130,
                    width: 130,
                    child: Center(
                      child: Image.asset(
                        'assets/images/logo.png',
                        fit: BoxFit.fill,
                      ),
                      // child: Text(
                      //   'G',
                      //   style: TextStyle(
                      //       fontSize: 80, color: Colors.green.shade700),
                      // ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              FadeInLeft(
                duration: Duration(seconds: 2),
                child: Text(
                  'greenery',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green.shade800),
                ),
              ),
              FadeInRight(
                duration: Duration(seconds: 2),
                child: Text(
                  'Makes your food more healthy',
                  style:
                      TextStyle(fontSize: 12, color: Colors.blueGrey.shade400),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 9,
              ),
              FadeInUp(
                duration: Duration(seconds: 2),
                child: Container(
                  child: Center(
                    child: Column(
                      children: [
                        CustomtextField(
                          controller: email,
                          hintText: 'Email',
                          icon: Icons.person,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        PasswordTextField(
                          iconTap: () {
                            setState(() {
                              isVisible = !isVisible;
                            });
                          },
                          obsureText: isVisible,
                          controller: password,
                          hintText: 'Password',
                          icon: Icons.lock,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomButton(
                            ontap: () {
                              Get.to(HomeScreen());
                            },
                            title: Text(
                              'Login',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Forgot password?',
                              style: TextStyle(
                                color: Colors.green.shade400,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        GestureDetector(
                          onTap: () {
                            // Get.to(RegisterScreen());
                          },
                          child: Text(
                            'Don\'t have an account create now?',
                            style: TextStyle(
                              color: Colors.green.shade400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
