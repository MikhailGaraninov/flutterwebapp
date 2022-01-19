import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_2/components/already_have_an_account.dart';
import 'package:flutter_application_2/Screens/Register/register_screen.dart';
import 'package:flutter_application_2/Screens/Forgot_password_second/forgot_password_second.dart';

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //This size provides us total height and wight of our screenа
    return Container(
      alignment: Alignment.topCenter,
      padding: EdgeInsets.only(top: size.height * 0.1685),
      constraints: BoxConstraints(
          maxHeight: 1080, minHeight: 360, maxWidth: 1920, minWidth: 640),
      width: size.width * 1,
      /* height: size.height * 1, */
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/png/background_white.png",
              ))),
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
      constraints: BoxConstraints(
        maxWidth: size.width * 0.95, /* maxHeight: size.height * 0.6139, */
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Container(
            constraints: BoxConstraints(maxWidth: size.width * 0.89),
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 60),
            child: Text(
              "Введите email который вы указывали при регистрации",
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                textStyle: TextStyle(color: Color.fromRGBO(79, 78, 78, 0.72)),
              ),
            ),
          ),
          Container(
            constraints: BoxConstraints(maxWidth: size.width * 0.77),
            alignment: Alignment.topLeft,
            width: 412,
            padding: EdgeInsets.only(top: 60),
            child: TextField(
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w700,
                fontSize: 14,
                textStyle: TextStyle(color: Color.fromRGBO(79, 78, 78, 0.72)),
              ),
              decoration: const InputDecoration(
                  icon: Icon(Icons.mail), hintText: 'email'),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 60),
            child: RaisedButton(
              color: Color.fromRGBO(195, 130, 246, 1),
              textColor: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: Text(
                'Далее',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
              ),
              onPressed: () {
                _Enter(context);
              },
            ),
          ),
          Container(
            constraints: BoxConstraints(maxWidth: size.width * 0.77),
            alignment: Alignment.topLeft,
            width: 412,
            padding: EdgeInsets.only(top: 260),
            child: AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RegisterScreen();
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

void _Enter(BuildContext context) {
  Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => ForgotPasswordSecondScreen()));
}
