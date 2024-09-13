import 'package:flutter/material.dart';
import 'package:flutter_application_clone_netflix/Componentes/Cartel_Principal.dart';
import 'package:flutter_application_clone_netflix/Componentes/item_img.dart';
import 'package:flutter_application_clone_netflix/Componentes/item_redondeado.dart';


class Iniciopage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          CartelPrincipal(),
          this.listaHorizontal('Avances',ItemRedondeado(), 9),
          SizedBox(height: 10.0,),
           this.listaHorizontal('SuperHeroes',itemImg(), 10),
           SizedBox(height: 10.0,),
           this.listaHorizontal('Tendencias',itemImg(), 10),
           SizedBox(height: 10.0,),
           this.listaHorizontal('Mi lista',itemImg(), 10),
           SizedBox(height: 20.0,),
        ],
      ),
    );
  }



  Widget listaHorizontal(String titulo, Widget item_, int cantidad) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,


      children: <Widget>[
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 6.0 ,vertical: 10.0),
          child: Text(
            titulo,
             style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0
              ),
              ),
        ),

          Container(
            height:110.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,

            itemBuilder: (context, index){
              return item_;
            },
          ),
          ),
      ],
    );
  }


}