// ignore_for_file: prefer_const_constructors

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
      /* height: size.height * 1, */
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/png/background_blue.png",)
        )
      ),
      child: Container(
        /* margin: EdgeInsets.only(top: size.height * 0.1685), */
        width: 482,
        height: 663,
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
    return Container(
      width: 482,
      height: 663,
        constraints:
          BoxConstraints(
            maxWidth: size.width * 0.95,
            /* maxHeight: size.height * 0.6139, */ ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0,3),
              ),
            ],
            ),
            child: Column(
              children: <Widget>[
                Container(
                  constraints:
                    BoxConstraints(
                      maxWidth: size.width * 0.89),
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 30, top: 36, right: 10),
                  child: RegistrathionPhyz(
                    login: false,
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return RegisterCompanyScreen( );
                          },
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.5,
                      color: 
                        Color.fromRGBO(79, 78, 78, 0.72)
                    ),
                    color: Colors.white,
                    borderRadius:  
                      BorderRadius.circular(32)
                  ),
                  constraints:
                    BoxConstraints(
                      maxWidth: size.width * 0.77
                    ),
                  width: 412,
                  height: 51,
                  child: 
                    TextField(
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w600, 
                        fontSize: 17, 
                        textStyle: TextStyle(color: Color.fromRGBO(79, 78, 78, 0.72)), 
                      ),
                  decoration:  InputDecoration(
                    hintStyle: TextStyle(fontSize: 17),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10), // отступ от рамки
                    hintText: 'Имя *'
                  ),
                  ),
                ),
                SizedBox(height: 21),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.5,
                      color: 
                        Color.fromRGBO(79, 78, 78, 0.72)
                    ),
                    color: Colors.white,
                    borderRadius:  
                      BorderRadius.circular(32)
                  ),
                  constraints:
                    BoxConstraints(
                      maxWidth: size.width * 0.77
                    ),
                  width: 412,
                  height: 51,
                  child: 
                    TextField(
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w600, 
                        fontSize: 17, 
                        textStyle: TextStyle(color: Color.fromRGBO(79, 78, 78, 0.72)), 
                      ),
                  decoration:  InputDecoration(
                    hintStyle: TextStyle(fontSize: 17),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10), // отступ от рамки
                    hintText: 'Фамилия *'
                  ),
                  ),
                ),
                SizedBox(height: 21),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.5,
                      color: 
                        Color.fromRGBO(79, 78, 78, 0.72)
                    ),
                    color: Colors.white,
                    borderRadius:  
                      BorderRadius.circular(32)
                  ),
                  constraints:
                    BoxConstraints(
                      maxWidth: size.width * 0.77
                    ),
                  width: 412,
                  height: 51,
                  child: 
                    TextField(
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w600, 
                        fontSize: 17, 
                        textStyle: TextStyle(color: Color.fromRGBO(79, 78, 78, 0.72)), 
                      ),
                  decoration:  InputDecoration(
                    hintStyle: TextStyle(fontSize: 17),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10), // отступ от рамки
                    hintText: 'Отчество *'
                  ),
                  ),
                ),
                SizedBox(height: 21),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.5,
                      color: 
                        Color.fromRGBO(79, 78, 78, 0.72)
                    ),
                    color: Colors.white,
                    borderRadius:  
                      BorderRadius.circular(32)
                  ),
                  constraints:
                    BoxConstraints(
                      maxWidth: size.width * 0.77
                    ),
                  width: 412,
                  height: 51,
                  child: 
                    TextField(
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w600, 
                        fontSize: 17, 
                        textStyle: TextStyle(color: Color.fromRGBO(79, 78, 78, 0.72)), 
                      ),
                  decoration:  InputDecoration(
                    hintStyle: TextStyle(fontSize: 17),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10), // отступ от рамки
                    hintText: 'Адрес электронной почты *'
                  ),
                  ),
                ),
                SizedBox(height: 21),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.5,
                      color: 
                        Color.fromRGBO(79, 78, 78, 0.72)
                    ),
                    color: Colors.white,
                    borderRadius:  
                      BorderRadius.circular(32)
                  ),
                  constraints:
                    BoxConstraints(
                      maxWidth: size.width * 0.77
                    ),
                  width: 412,
                  height: 51,
                  child: 
                    TextField(
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w600, 
                        fontSize: 17, 
                        textStyle: TextStyle(color: Color.fromRGBO(79, 78, 78, 0.72)), 
                      ),
                  decoration:  InputDecoration(
                    hintStyle: TextStyle(fontSize: 17),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10), // отступ от рамки
                    hintText: 'Пароль *'
                  ),
                  ),
                ),
                SizedBox(height: 21),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.5,
                      color: 
                        Color.fromRGBO(79, 78, 78, 0.72)
                    ),
                    color: Colors.white,
                    borderRadius:  
                      BorderRadius.circular(32)
                  ),
                  constraints:
                    BoxConstraints(
                      maxWidth: size.width * 0.77
                    ),
                  width: 412,
                  height: 51,
                  child: 
                    TextField(
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w600, 
                        fontSize: 17, 
                        textStyle: TextStyle(color: Color.fromRGBO(79, 78, 78, 0.72)), 
                      ),
                  decoration:  InputDecoration(
                    hintStyle: TextStyle(fontSize: 17),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10), // отступ от рамки
                    hintText: 'Повторите пароль *'
                  ),
                  ),
                ),
                SizedBox(height: 21),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.5,
                      color: 
                        Color.fromRGBO(79, 78, 78, 0.72)
                    ),
                    color: Colors.white,
                    borderRadius:  
                      BorderRadius.circular(32)
                  ),
                  constraints:
                    BoxConstraints(
                      maxWidth: size.width * 0.77
                    ),
                  width: 412,
                  height: 51,
                  child: 
                    TextField(
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w600, 
                        fontSize: 17, 
                        textStyle: TextStyle(color: Color.fromRGBO(79, 78, 78, 0.72)), 
                      ),
                  decoration:  InputDecoration(
                    hintStyle: TextStyle(fontSize: 17),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10), // отступ от рамки
                    hintText: 'Телефон'
                  ),
                  ),
                ),
                Container(
                   margin: EdgeInsets.only(top: 20),
                  /* alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20), */
                child: 
                  RaisedButton(
                    color: Color.fromRGBO(127, 204, 38, 0.65),
                    textColor: Colors.white,
                    padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      child: Text( 'Зарегистрироваться'), 
                        onPressed: (){
                          _navigateToNextScreen(context);
                },),
                ),
            ],
            ),
      );
    
  }
}

void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => LicensionScreen()));
  }
