import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screens/Forgot_password/background.dart';

class ForgotPasswordScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Column(
        children: [
          Background()
        ],
      ))
    );
  }
}