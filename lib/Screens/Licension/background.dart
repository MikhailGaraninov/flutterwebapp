// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_2/components/already_have_an_account.dart';
import 'package:flutter_application_2/Screens/Licension/licension_screen.dart';
import 'package:flutter_application_2/Screens/Forgot_password/forgot_password.dart';
import 'package:flutter_application_2/components/forgot_or_call.dart';
import 'package:flutter_application_2/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_application_2/components/responsible_layout.dart';
import 'package:flutter_application_2/components/forgot_or_call_small_screen.dart';

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
    return Container(
      width: 1446,
      height: 698,
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
            child: ListView(
              children: <Widget>[
                Container(
                  constraints:
                    BoxConstraints(
                      maxWidth: size.width * 0.89),
                  alignment: Alignment. center,
                  padding: EdgeInsets.only(top: 31),
                  child: Text(
                    "Лицензионное соглашение",
                    softWrap: true,
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
                  padding: EdgeInsets.only(left: 40, top: 15, right: 45),
                  child: Text(
                    "Равным образом рамки и место обучения кадров"
                     "позволяет оценить значение соответствующий условий активизации."
                      " Разнообразный и богатый опыт дальнейшее развитие различных форм деятельности"
                      "требуют от нас анализа новых предложений. Повседневная практика показывает, " 
                      "что рамки и место обучения кадров играет важную роль в формировании форм развития.",

                      textAlign: TextAlign.left,
                      softWrap: true,
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w400, 
                        fontSize: 15, 
                        textStyle: TextStyle(color: Color.fromRGBO(79, 78, 78, 0.72)), 
                      ),
                    ),
                ),
                SizedBox(height: 21),
                 Container(
                  constraints:
                    BoxConstraints(
                      maxWidth: size.width * 0.89),
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 40, right: 45),
                  child: Text(
                   

"Разнообразный и богатый опыт укрепление и развитие структуры влечет за собой процесс внедрения и модернизации направлений прогрессивного развития. Разнообразный и богатый опыт реализация намеченных плановых заданий требуют определения и уточнения систем массового участия. Таким образом укрепление и развитие структуры играет важную роль в формировании новых предложений. Повседневная практика показывает, что дальнейшее развитие различных форм деятельности влечет за собой процесс внедрения и модернизации новых предложений."
,



                      textAlign: TextAlign.left,
                      softWrap: true,
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w400, 
                        fontSize: 15, 
                        textStyle: TextStyle(color: Color.fromRGBO(79, 78, 78, 0.72)), 
                      ),
                    ),
                ),
                 SizedBox(height: 21),
                 Container(
                  constraints:
                    BoxConstraints(
                      maxWidth: size.width * 0.89),
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 40,  right: 45),
                  child: Text(
                    

"Разнообразный и богатый опыт рамки и место обучения кадров требуют определения и уточнения модели развития. Равным образом постоянное информационно-пропагандистское обеспечение нашей деятельности обеспечивает широкому кругу (специалистов) участие в формировании направлений прогрессивного развития. Равным образом постоянное информационно-пропагандистское обеспечение нашей деятельности требуют от нас анализа модели развития. С другой стороны реализация намеченных плановых заданий требуют определения и уточнения системы обучения кадров, соответствует насущным потребностям. Таким образом рамки и место обучения кадров влечет за собой процесс внедрения и модернизации соответствующий условий активизации. Повседневная практика показывает, что реализация намеченных плановых заданий позволяет оценить значение существенных финансовых и административных условий."
,

                      textAlign: TextAlign.left,
                      softWrap: true,
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w400, 
                        fontSize: 15, 
                        textStyle: TextStyle(color: Color.fromRGBO(79, 78, 78, 0.72)), 
                      ),
                    ),
                ),
                 SizedBox(height: 21),
                 Container(
                  constraints:
                    BoxConstraints(
                      maxWidth: size.width * 0.89),
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 40,  right: 45),
                  child: Text(
                    

"Задача организации, в особенности же начало повседневной работы по формированию позиции позволяет выполнять важные задания по разработке соответствующий условий активизации. С другой стороны укрепление и развитие структуры позволяет выполнять важные задания по разработке форм развития. Не следует, однако забывать, что начало повседневной работы по формированию позиции влечет за собой процесс внедрения и модернизации новых предложений. ",
                      textAlign: TextAlign.left,
                      softWrap: true,
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w400, 
                        fontSize: 15, 
                        textStyle: TextStyle(color: Color.fromRGBO(79, 78, 78, 0.72)), 
                      ),
                    ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 41, bottom: 65),
                   /* constraints:
                    BoxConstraints(
                      maxWidth: size.width * 0.5), */
                  child: 
                    RaisedButton(
                    color: Color.fromRGBO(195, 130, 246, 1),
                    textColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                    shape: RoundedRectangleBorder(
                      
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                      child: Text( 'Согласен',
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
            ],
            ),
      );
    
  }
}

void _Enter(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }

