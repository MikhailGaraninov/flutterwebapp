import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/button_register.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_2/components/rounded_button.dart';
import 'package:flutter_application_2/components/already_have_an_account.dart';
import 'package:flutter_application_2/Screens/Register/register_screen.dart';
import 'package:flutter_application_2/Screens/Forgot_password/forgot_password.dart';
import 'package:flutter_application_2/components/forgot_or_call.dart';
import 'package:flutter_application_2/components/register_phyz.dart';
import 'package:flutter_application_2/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_application_2/Screens/Licension/licension_screen.dart';
import 'package:flutter_application_2/Screens/Register_company/register_company_screen.dart';

class Background extends StatelessWidget {




@override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; 
    //This size provides us total height and wight of our screenа
    return Container(
      alignment:Alignment.topCenter,
      padding: EdgeInsets.only(top: size.height * 0.1685),
      constraints: BoxConstraints(maxHeight: 1080, minHeight: 360, maxWidth: 1920, minWidth: 640),
      width: size.width * 1,
     /*  height: size.height * 1, */
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/png/back_ml_simple.png",)
        )
      ),
      child: Container(
        /* margin: EdgeInsets.only(top: size.height * 0.1685), */
        width: 1446,
        height: 698,
        child: Column(
          children: [
            Content(size: size), 
          ],
        ),
      ),
    );
  }
}

class Content extends StatelessWidget {
  const Content({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Container(
                color: Color.fromRGBO(248, 248, 248, 1),
              ),
            ),
            Expanded(
              child: Container(
                color: Color.fromRGBO(248, 248, 248, 1),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Container(
                color: Color.fromRGBO(248, 248, 248, 1),
              ),
            ),
          ],
        ),
      );        
    
  }
}