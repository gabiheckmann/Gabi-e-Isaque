// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gap/gap.dart';
import 'praia.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});
  


  @override
  State<HomePage> createState() => _HomePageState();

}
List<Praia> praias = [ Praia('Ubatuba','img/ubatuba.jpg', 'Alto'),
                        Praia('Ilha Comprida','img/ilhaComprida.jpg', 'Alto'),
                        Praia('São Sebastião','img/saoSebastiao.jpg', 'Alto')
                      
                ];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: <Widget>[
            const Gap(20),
            Text('Cidades com a maior erosão',
                style: GoogleFonts.khand(
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 38,
                      fontWeight: FontWeight.w700),
                )),
            const Gap(30),
            Container(
              width: largura * 0.73,
              height: altura * 0.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(praias[0].image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(praias[0].titulo,
                    style: GoogleFonts.kaiseiDecol(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 64,
                            fontWeight: FontWeight.w500))),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: largura / 7.5),
              child: Row(
                children: <Widget>[
                  Text("NIVEL DE RISCO: ",
                      style: GoogleFonts.khand(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      )),
                  Text(
                    praias[0].risco,
                    style: GoogleFonts.khand(
                        textStyle: TextStyle(
                            color: Colors.red,
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            const Gap(30),
            Container(
              width: largura * 0.73,
              height: altura * 0.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(praias[1].image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(praias[1].titulo,
                textAlign: TextAlign.center,
                    style: GoogleFonts.kaiseiDecol(
                        textStyle: TextStyle(
                            color: Colors.white,
                            height: 1,
                            fontSize: 50,
                            fontWeight: FontWeight.w500))),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: largura / 7.5),
              child: Row(
                children: <Widget>[
                  Text("NIVEL DE RISCO: ",
                      style: GoogleFonts.khand(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      )),
                  Text(
                    praias[1].risco,
                    style: GoogleFonts.khand(
                        textStyle: TextStyle(
                            color: Colors.red,
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            const Gap(40),
            Container(
              width: largura * 0.73,
              height: altura * 0.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(praias[2].image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(praias[2].titulo,
                textAlign: TextAlign.center,
                    style: GoogleFonts.kaiseiDecol(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 53,
                            height: 1,
                            fontWeight: FontWeight.w500))),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: largura / 7.5),
              child: Row(
                children: <Widget>[
                  Text("NIVEL DE RISCO: ",
                      style: GoogleFonts.khand(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      )),
                  Text(
                    praias[2].risco,
                    style: GoogleFonts.khand(
                        textStyle: TextStyle(
                            color: Colors.red,
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            const Gap(40)
          ],
        ),
      ),
    );
  }
}