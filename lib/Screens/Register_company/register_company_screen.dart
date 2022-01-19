import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screens/Register_company/background.dart';

class RegisterCompanyScreen extends StatelessWidget {


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