// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gap/gap.dart';
import 'package:app_clsp/informacao.dart';


class SignPage extends StatefulWidget {
  const SignPage({super.key});

  @override
  State<SignPage> createState() => _SignPageState();
}
List <Informacao> textos2 = [ Informacao('Redução da largura da praia: A faixa da areia da praiafica cada vez mais estreita, com o mar avançando em direção à terra firme.'),
                         Informacao('Aumento da turbidez da água: A presença de grande quantidade de sedimentos em suspensão na água do mar pode indicar que a erosão costeira está se intensificando.'),
                         Informacao('Inclinação de postes, árvores e outros objetos: Postes, árvores e outros objetos que estão próximos à costa podem apresentar inclinação devido ao movimento do solo.'),];


class _SignPageState extends State<SignPage>{
  @override

  Widget build(BuildContext context){
    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: <Widget>[
            const Gap(20),
            Text('Sinais de Erosão',
                style: GoogleFonts.khand(
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 38,
                      fontWeight: FontWeight.w700),
                )),
                      const Gap(30) , 
              // ignore: sized_box_for_whitespace
              Container(
                 width: largura * 0.7,
                height: altura * 0.18,
                padding: EdgeInsets.all(27.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color:  Color.fromARGB(255, 88, 160, 255)
                ),
                child: Text(textos2[0].texto, 
                style: TextStyle(
                  fontSize: 18,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  ),textAlign: TextAlign.center)

              
              ),
            const Gap(30),
              Container(
                 width: largura * 0.7,
                height: altura * 0.18,
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color:  Color.fromARGB(255, 88, 160, 255)
                  
                ),
                child: Text(textos2[1].texto, 
                style: TextStyle(
                  fontSize: 18,
                  color:const Color.fromARGB(255, 255, 255, 255),
                  ),
                  textAlign: TextAlign.center
                  )

              
              ),
              const Gap(30),

               Container(
                 width: largura * 0.7,
                height: altura * 0.18,
                padding: EdgeInsets.all(18.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color:  Color.fromARGB(255, 88, 160, 255)
                ),
                child: Text(textos2[2].texto, 
                style: TextStyle(
                  fontSize: 18,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  textAlign: TextAlign.center
                  )             
              ),

          ],
        ),
      ),
    );
  }
}