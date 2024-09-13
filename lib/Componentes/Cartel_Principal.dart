import 'package:flutter/material.dart';
import 'package:flutter_application_clone_netflix/Componentes/Navbar_superior.dart';


class CartelPrincipal extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        this.cabecera(),
        this.infoSeries(),
        this.botonera(),
      ],
    );
  }

  Widget cabecera(){
    return Stack(
          children: <Widget>[
            Image.network('https://okdiario.com/img/series/2015/12/30462.jpg',
            height: 350.0,
            fit: BoxFit.cover,
            ),
            Container(
              width: double.infinity,
              height: 350.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.black38,
                    Colors.black
                  ]
                )
              ),
            ),
            SafeArea(
              child: NavBarSuperior(),
              ),
          ],
        );
  }

Widget infoSeries(){
  return Row(
    mainAxisAlignment:MainAxisAlignment.center ,
    children:<Widget> [
      Text(
        'Telenovelesco'
        , style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record, color: Colors.red,size: 5.0),
      Text(
        'Suspenso insostenible', 
        style: TextStyle(color: Colors.white,fontSize: 10.0),
        ),
        SizedBox(width: 6.0),
         Icon(Icons.fiber_manual_record, color: Colors.red,size: 5.0),
      Text(
        'De suspenso',
        style: TextStyle(color: Colors.white,fontSize: 10.0),
        ),
        SizedBox(width: 6.0),
         Icon(Icons.fiber_manual_record, color: Colors.red,size: 5.0),
      Text(
        'Adolescentes',
        style: TextStyle(color: Colors.white,fontSize: 10.0),
        ), 
        SizedBox(width: 6.0),
         Icon(Icons.fiber_manual_record, color: Colors.red,size: 5.0), 
    ],
  );
}

Widget botonera() {
  return Padding(
    padding:  EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Column(
        children: <Widget>[
          Icon(Icons.check, color: Colors.white),
          SizedBox(height: 3.0),
          Text(
            'Mi lista',
             style: TextStyle(
              color: Colors.white,
              fontSize: 10.0,
              ),
              )
        ],
      ),
      TextButton.icon(
        onPressed:() {}, 
        icon:Icon(
          Icons.play_arrow,
           color: Colors.white,
           ),
            label:Text('Reproducir'),
            ),
            Column(
        children: <Widget>[
          Icon(Icons.info_outline, color: Colors.white),
          SizedBox(height: 3.0),
          Text(
            'Informacion',
             style: TextStyle(
              color: Colors.white,
              fontSize: 10.0,
              ),
              )
        ],
      ),
    ],
    )
  );
}
}