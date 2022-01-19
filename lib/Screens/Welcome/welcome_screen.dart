import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screens/Welcome/components/background.dart';

class WelcomeScreen extends StatelessWidget {


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