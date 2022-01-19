import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screens/Welcome/welcome_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_2/Screens/Register_company/register_company_screen.dart';

class RegistrathionPhyz extends StatelessWidget {
  final bool login;
  final Function press;
  const RegistrathionPhyz({
    this.login = true,
     required this.press ,
  }) ;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // ignore: prefer_const_constructors
        Text(
            "Регистрация",
          
          // ignore: prefer_const_constructors
          style: GoogleFonts.openSans(
            textStyle: TextStyle(
              color: Color.fromRGBO(124,124,124,1), 
              fontWeight: FontWeight.w600,
              fontSize: 32,
            ),
          )    
        ),
        SizedBox(width: 59),
        Text(
            "Физ. лицо | ",
            style: GoogleFonts.roboto(
            textStyle: TextStyle(
              color: Color.fromRGBO(124,124,124,1), 
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          )    
        ),
        GestureDetector(
          onTap: (){ Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RegisterCompanyScreen( );
                      },
                  ),
          );
          },
           child: Text(
            "Юр. лицо",
            style: GoogleFonts.roboto(
            textStyle: TextStyle(
              color: Color.fromRGBO(124,124,124,1), 
              fontWeight: FontWeight.w500,
              fontSize: 10.5,
            ),
          )    
          ),
        )
      ],
    );
  }

  Function get presslogin => press;
}
