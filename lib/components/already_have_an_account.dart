import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screens/Register/register_screen.dart';



class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    this.login = true,
     required this.press ,
  }) ;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
            "Нет аккаунта? ",
          style: TextStyle(color: Colors.grey),
        ),
        GestureDetector(
          onTap: (){ Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RegisterScreen( );
                      },
                  ),
          );
          },
           child: Text(
            "Зарегистрироваться",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }

  Function get presslogin => press;
}
