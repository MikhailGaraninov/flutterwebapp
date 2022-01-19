import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screens/Welcome/welcome_screen.dart';

class ButtonRegister extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const ButtonRegister({
    required this.text,
    

    this.color =  const Color.fromRGBO(157,204,38,0.65),
    this.textColor = Colors.white, required this.press,
  }) ;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      
        decoration: BoxDecoration(
              color: Color.fromRGBO(157,204,38,0.65),
              borderRadius: BorderRadius.all(Radius.circular(30)),
              border: Border.all(
                width: 0.5
              ),
              boxShadow: [
                /* BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: Offset(0,3),
              ), */
            ],
            ),
      margin: EdgeInsets.only(top: 20),
      width: 220,
      height: 49,
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
      onPressed: () {
        
      },
      style: ElevatedButton.styleFrom(
          primary: color,
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          textStyle: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700)),
    );
  }
}
