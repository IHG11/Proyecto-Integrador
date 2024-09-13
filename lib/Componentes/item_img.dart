import 'package:flutter/material.dart';

class itemImg extends StatelessWidget{
  @override
  Widget build(BuildContext context){
return Row(
  children: [
    Image.network(
      'https://occ-0-8407-2219.1.nflxso.net/dnm/api/v6/6AYY37jfdO6hpXcMjf9Yu5cnmO0/AAAABbU-EeOl8MFtVZIxYqX5u_T5TYW49dYY8JqCp7y8ZMVk2FiiL2xXpmYrVBB-_VmdN-teqnWNstoAZFn0qBulK7a4TmAD68Glc7oh.jpg?r=3b7',
      width: 100.0,
      fit: BoxFit.cover,
      ),
      SizedBox(width: 10.0,)
  ],
);
  }
}