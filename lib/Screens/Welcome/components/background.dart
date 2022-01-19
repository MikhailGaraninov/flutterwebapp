// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_2/components/rounded_button.dart';
import 'package:flutter_application_2/components/already_have_an_account.dart';
import 'package:flutter_application_2/Screens/Register/register_screen.dart';
import 'package:flutter_application_2/Screens/Forgot_password/forgot_password.dart';
import 'package:flutter_application_2/components/forgot_or_call.dart';
import 'package:flutter_application_2/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_application_2/components/responsible_layout.dart';
import 'package:flutter_application_2/components/forgot_or_call_small_screen.dart';
import 'package:flutter_application_2/Screens/AccountScreens/ProjectsMenu/projects_menu.dart';

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
          image: AssetImage("assets/png/background_white.png",)
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
                  color: Colors.grey.withOpacity(0.5),
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
                  padding: EdgeInsets.only(left: 45, top: 44),
                  child: Text(
                    "Здравствуйте",
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w600, 
                        fontSize: 28, 
                        textStyle: TextStyle(color: Color.fromRGBO(79, 78, 78, 0.72)), 
                      ),
                    ),
                ),
                Container(
                  constraints:
                    BoxConstraints(
                      maxWidth: size.width * 0.89),
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 45, top: 15),
                  child: Text(
                    "Введите свои данные для входа",
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w400, 
                        fontSize: 15, 
                        textStyle: TextStyle(color: Color.fromRGBO(79, 78, 78, 0.72)), 
                      ),
                    ),
                ),
                Container(
                  constraints:
                    BoxConstraints(
                      maxWidth: size.width * 0.77),
                  alignment: Alignment.topLeft,
                  width: 412,
                  padding: EdgeInsets.only(top: 42),
                  child: 
                  TextField(
                    style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w700, 
                        fontSize: 14, 
                        textStyle: TextStyle(color: Color.fromRGBO(79, 78, 78, 0.72)), 
                      ),
                  decoration: const InputDecoration(
                    icon: Icon(Icons.mail),
                    hintText: 'Логин'
                  ),
                  ),
                ),
                Container(
                  constraints:
                    BoxConstraints(
                      maxWidth: size.width * 0.77),
                  alignment: Alignment.topLeft,
                  width: 412,
                  padding: EdgeInsets.only(top: 41),
                  child: 
                    TextField(
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w700, 
                        fontSize: 14, 
                        textStyle: TextStyle(color: Color.fromRGBO(79, 78, 78, 0.72)), 
                      ),
                   decoration: const InputDecoration(
                    icon: Icon(Icons.password),
                    hintText: 'Пароль'
                  ),
                ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 41),
                  child: 
                    RaisedButton(
                    color: Color.fromRGBO(195, 130, 246, 1),
                    textColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                    shape: RoundedRectangleBorder(
                      
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                      child: Text( 'Войти',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14
                      ),
                      ), 
                        onPressed: (){
                          _Enter(context);
                },
                ),
                ),
               /*  Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 31, /* left: 290 */),
                  width: 136,
                  height: 60,
                  decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
                  child: ElevatedButton(
                  
                  child: Text("Войти", style: TextStyle(fontSize: 22)),
                  onPressed:(){ print("Clicked!!!");}
               ),
                ) */
              Container(
                constraints:
                    BoxConstraints(
                      maxWidth: size.width * 0.77),
                  alignment: Alignment.topLeft,
                  width: 412,
                  padding: EdgeInsets.only(top: 200),
                child: AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RegisterScreen( );
                    },
                  ),
                );
              },
            ),
              ),
              if (!ResponsiveLayout.isSmallScreen(context))
               Container(
                constraints:
                    BoxConstraints(
                      maxWidth: size.width * 0.77),
                  alignment: Alignment.center,
                  width:  size.width * 0.7,
                  padding: EdgeInsets.only(top: 20),
                child: ForgotPasswordSmallScreen(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ForgotPasswordScreen( );
                    },
                  ),
                );
              },
            ),
              )
              else
              Container(
                constraints:
                    BoxConstraints(
                      maxWidth: size.width * 0.77),
                  alignment: Alignment.center,
                  width:  360,
                  padding: EdgeInsets.only(top: 20),
                child: ForgotPassword(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ForgotPasswordScreen( );
                    },
                  ),
                );
              },
            ),
              )
            ],
            ),
      );
    
  }
}

void _Enter(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProjectsMenu()));
  }



/* class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButton({
    required this.text,
    

    this.color =  Colors.white,
    this.textColor = Colors.grey, required this.press,
  }) ;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              border: Border.all(
                width: 0.5
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: Offset(0,3),
              ),
            ],
            ),
      margin: EdgeInsets.only(top: 40),
      width: 150,
      child: ClipRRect(
        
        borderRadius: BorderRadius.circular(29),
        
        child: newElevatedButton(),
      ),
    );
  }

  //Used:ElevatedButton as FlatButton is deprecated.
  //Here we have to apply customizations to Button by inheriting the styleFrom

  Widget newElevatedButton() {
    return ElevatedButton(
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          primary: color,
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          textStyle: TextStyle(
              color: textColor, fontSize: 14, fontWeight: FontWeight.w500)),
    );
  }
} */



  /*     constraints:
      BoxConstraints(
        maxWidth: 482,
        maxHeight: size.height * 0.6139,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black,
          width: 0.5,
        ),
        borderRadius: BorderRadius.all(Radius.circular(30)))
    */