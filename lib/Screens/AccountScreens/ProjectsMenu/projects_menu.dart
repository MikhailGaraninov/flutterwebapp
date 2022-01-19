import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screens/AccountScreens/ProjectsMenu/background.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectsMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      /* backgroundColor: Color.fromRGBO(248, 248, 248, 1), */
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('MLGroup'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.person),
            tooltip: 'Account',
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('Something')));
            },
          ),
/*           IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Next page'),
                    ),
                    body: const Center(
                      child: Text(
                        'This is the next page',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  );
                },
              ));
            },
          ), */
        ],
      ),
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  ListTile(
                    onTap: () {},
                    title: Center(
                        child: Text("Аккаунт",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              textStyle: TextStyle(
                                color: Color.fromRGBO(164, 164, 164, 1),
                              ),
                            ))),
                  ),
                  ListTile(
                    onTap: () {},
                    title: Center(
                      child: Text(
                        "Проект",
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          textStyle:
                              TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    title: Center(
                        child: Text("Заказы",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              textStyle: TextStyle(
                                  color: Color.fromRGBO(164, 164, 164, 1)),
                            ))),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Drawer(
                child: SingleChildScrollView(
                  child: Container(
                    /* color: Colors.grey, */
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  "Мои проекты",
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 30,
                                    textStyle: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                    ),
                                  ),
                                ),
                              ),
                              /*  SizedBox(width: size.width * 0.33), */
                              Container(
                                padding: EdgeInsets.only(right: 10),
                                /*  alignment: Alignment.topRight, */
                                child: Image.asset("assets/png/logo_ml.png"),
                              ),
                            ]),
                        SizedBox(height: 40),


                       
                        
     
       
      




                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  ListTile(
                    onTap: () {},
                    title: Center(
                        child: Text("Тип геометрии",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              textStyle: TextStyle(
                                  color: Color.fromRGBO(164, 164, 164, 1)),
                            ))),
                  ),
                  ListTile(
                    onTap: () {},
                    title: Center(
                        child: Text("Материалы",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              textStyle: TextStyle(
                                  color: Color.fromRGBO(164, 164, 164, 1)),
                            ))),
                  ),
                  ListTile(
                    onTap: () {},
                    title: Center(
                        child: Text("Основное",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              textStyle: TextStyle(
                                  color: Color.fromRGBO(164, 164, 164, 1)),
                            ))),
                  ),
                  ListTile(
                    onTap: () {},
                    title: Center(
                        child: Text("Кромка",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              textStyle: TextStyle(
                                  color: Color.fromRGBO(164, 164, 164, 1)),
                            ))),
                  ),
                  ListTile(
                    onTap: () {},
                    title: Center(
                        child: Text("Сверление",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              textStyle: TextStyle(
                                  color: Color.fromRGBO(164, 164, 164, 1)),
                            ))),
                  ),
                  ListTile(
                    onTap: () {},
                    title: Center(
                        child: Text("Упаковка",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              textStyle: TextStyle(
                                  color: Color.fromRGBO(164, 164, 164, 1)),
                            ))),
                  )
                ],
              ),
            ),
            /* Expanded(
              flex: 1,
              child: Drawer(
              child: SingleChildScrollView(
              child: Container(
                color:  Colors.white,
              ),
              ),
              ),
            ), */
          ],
        ),
      ),
    );
  }
}

