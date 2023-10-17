import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({
    super.key,
    required this.icon,
    required this.title
  });
final IconData icon;
final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ 
        Icon(icon,
        color: Colors.white,
        size: 25,),
        Text(title,
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold
        ),)
      ],
    );
  }
}
