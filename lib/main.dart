import 'package:flutter/material.dart';
import 'package:flutter_application_clone_netflix/Paginas/Inicio.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Iniciopage(),
    );
  }
}