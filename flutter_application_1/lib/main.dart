
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main () {
  runApp(PrimeiraClasse());

}  

class PrimeiraClasse extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red ),
      home:SegundaClasse(),
    );
  }
}//fim PrimeiraClasse

class SegundaClasse extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return SegundaClasseEstado();
  }
}//fim SegundaClasse

class SegundaClasseEstado extends State<SegundaClasse>{
  int cont =0;

  @override
  Widget build(BuildContext context) {
  return  Scaffold(
    appBar: AppBar(
      title: Text('primeiro aplicativo',style: TextStyle(color:Colors.blue,
      fontSize: 50.0  ),),
      
      ),
      body: Container(
        width: 200,
        height: 200,
        margin:EdgeInsets.all(20),
        decoration: BoxDecoration( color: Colors.blue
        ),
    child: Center(child: GestureDetector(
      child:Text('posição $cont'),
       onTap: (){
         setState(() {
           cont++ ; //<<- contador(cont) +1
         });
       },
        ),
      ),
    ),
  );
  }

}

