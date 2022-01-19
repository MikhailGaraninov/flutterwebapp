import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screens/Forgot_password/forgot_password.dart';
import 'package:flutter_application_2/Screens/Welcome/welcome_screen.dart';



class ForgotPasswordSmallScreen extends StatelessWidget {
  final bool login;
  final Function press;
  const ForgotPasswordSmallScreen({
    this.login = true,
     required this.press ,
  }) ;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
         GestureDetector(
          onTap: (){ Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ForgotPasswordScreen( );
                      },
                  ),
          );
          },
           child: Text(
            "Забыли пароль?",
          style: TextStyle(color: Colors.grey),
        ),
         ),
         Text(" или ",
         style: TextStyle(
              color: Colors.grey,
            ),),
        GestureDetector(
          onTap: (){ Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WelcomeScreen( );
                      },
                  ),
          );
          },
           child: Text(
            "Позвонить менеджеру",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        )
      ],
    );
  }

  Function get presslogin => press;
}
