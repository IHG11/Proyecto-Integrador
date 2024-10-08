import 'package:flutter/material.dart';


class ItemRedondeado extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Container(
              height: 110.0,
              width: 110.0,
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(110.0) ,
                border: Border.all(
                  color: Colors.yellow,
                  width: 2.0,
                ),
              ) ,
              child: ClipOval(
            child:Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8Mm-OozbaA3WbWjUUV140Wq3KaQk5gCGxJQ&s',
              fit: BoxFit.cover,
            ),
            ),
            ),
          ],
        ),
        SizedBox(width: 10.0,)
      ],
    );
  }
}