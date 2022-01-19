import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screens/Welcome/welcome_screen.dart';
 
void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MLGroup',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}



/*   runApp(MaterialApp(
    home: Scaffold(
      body: Image.asset("assets/first.jpg"),
      appBar: AppBar(
        title: const Text("METANIT.COM"),
      ),
    ),
  ));
} */