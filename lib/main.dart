// ignore_for_file: prefer_const_constructors, unused_import, unnecessary_import

import 'package:flutter/material.dart';
import 'home.dart';
import 'map.dart';
import 'navexterna.dart';
import 'signs.dart';
import 'care.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int opcaoSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
              backgroundColor: Color.fromARGB(252, 14, 65, 160),
              indicatorColor: Color.fromARGB(0, 1, 1, 1),
              labelTextStyle: WidgetStateProperty.all(TextStyle(
                fontSize: 0,
                fontWeight: FontWeight.w300,
              ))),
          child: NavigationBar(
            selectedIndex: opcaoSelecionada,
            onDestinationSelected: (opcao) {
              setState(() {
                opcaoSelecionada = opcao;
              });
            },
            destinations: const <Widget>[
              NavigationDestination(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                  size: 60,
                ),
                label: "",
              ),
              NavigationDestination(
                  icon: Icon(
                    Icons.question_mark,
                    color: Colors.black,
                    size: 60,
                  ),
                  label: ""),
              NavigationDestination(
                icon: Icon(
                  CupertinoIcons.exclamationmark,
                  color: Colors.black,
                  size: 60,
                ),
                label: "",
              ),
              NavigationDestination(
                icon: Icon(
                  Icons.location_on,
                  color: Colors.black,
                  size: 60,
                ),
                label: "",
              ),
            ],
          ),
        ),
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(66),
            child: AppBar(
              title: Text(
                'CLSP',
                style: GoogleFonts.inter(
                    textStyle: TextStyle(color: Colors.white, fontSize: 50)),
              ),
              centerTitle: true,
              backgroundColor: Color.fromARGB(252, 14, 65, 160),
            )),
        body: IndexedStack(
          index: opcaoSelecionada,
          children: const <Widget>[
            HomePage(),
            SignPage(),
            DoPage(),
            MapPage(),
            navExterna(),
          ],
        ),
      ),
    );
  }
}
