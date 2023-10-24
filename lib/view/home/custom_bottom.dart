import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({
    super.key,
    required this.icon,
    required this.title,
    this.iconSize =30,
    this.textSize =18

  });
final IconData icon;
final String title;
final double iconSize;
final double textSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ 
        Icon(icon,
        color: Colors.white,
        size: iconSize,),
        Text(title,
        style:  TextStyle(
          fontSize: textSize,
          fontWeight: FontWeight.bold
        ),)
      ],
    );
  }
}
class PlayButton extends StatelessWidget {
  const PlayButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: () {},
        style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
        icon: const Icon(Icons.play_arrow,
        size: 25,
        color: Colors.black,
        ),
        label:const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Text("Play",style: TextStyle(fontSize: 20,color: Colors.black),),
        ),);
  }
}