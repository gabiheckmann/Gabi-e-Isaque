// ignore_for_file: prefer_const_constructors

import 'package:app_clsp/contato.dart';
import 'package:app_clsp/informacao.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gap/gap.dart';

class DoPage extends StatefulWidget {
  const DoPage({super.key});

  @override
  State<DoPage> createState() => _DoPageState();
}
List<Informacao> textos = [ Informacao('Comunique as autoridades locais: Informe a prefeitura, o estado ou o órgão ambiental responsável pela gestão da orla marítima sobre os sinais de erosão que você observou.'),
                         Informacao('Evite construir ou realizar reformas em áreas de risco: A erosão pode tornar áreas próximas à costa instáveis e inseguras para construção.'),
                         Informacao('Participe de ações de proteção da costa: Existem diversas iniciativas de proteção da costa que você pode participar, como o plantio de árvores, a limpeza de praias e a participação em campanhas de conscientização.'),

                      
                ];
         
List<Contato> contatos = [Contato( '(11) 5898-5600', 'cpambp5@policiamilitar.sp.gov.br')] ;

class _DoPageState extends State<DoPage>{
  @override

  Widget build(BuildContext context){
   final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: <Widget>[
            const Gap(20),
            Text('Como Lidar',
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
                padding: EdgeInsets.all(18.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromARGB(255, 88, 160, 255)
                ),
                child: Text(textos[0].texto, 
                style: TextStyle(
                  fontSize: 18,
                  color:  const Color.fromARGB(255, 255, 255, 255),
                  ),textAlign: TextAlign.center)

              
              ),
            const Gap(30),
              Container(
                 width: largura * 0.7,
                height: altura * 0.18,
                padding: EdgeInsets.all(25.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color:Color.fromARGB(255, 88, 160, 255)
                ),
                child: Text(textos[1].texto, 
                style: TextStyle(
                  fontSize: 18,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  ),textAlign: TextAlign.center)

              
              ),
              const Gap(30),

               Container(
                 width: largura * 0.7,
                height: altura * 0.18,
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color:Color.fromARGB(255, 88, 160, 255)
                ),
                child: Text(textos[2].texto, 
                style: TextStyle(
                  fontSize: 18,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  ),textAlign: TextAlign.center)

              
              ),
              const Gap(10),
              Container(
                child: Text(
                'Entre em contato com a polícia ambiental nos seguintes meios:',  style: GoogleFonts.khand(
              textStyle:  TextStyle(color: Colors.black,
              height: 1,
              fontSize: 16,
              fontWeight: FontWeight.w500)
             ),
                
    
              textAlign: TextAlign.center),
              ),
              
              Text(contatos[0].telefone, style: GoogleFonts.khand(
                textStyle:  TextStyle(color: Colors.black,
              height: 1,
              fontSize: 16,
              fontWeight: FontWeight.w500)
             ),
              ),
              Text(contatos[0].email, style: GoogleFonts.khand(
                textStyle:  TextStyle(color: Colors.black,
              height: 1,
              fontSize: 16,
              fontWeight: FontWeight.w500)
             ), ),

        ],
        
      
        
          
        ),
       
      ),
    );
  }
}