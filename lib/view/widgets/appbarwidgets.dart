import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prime_video/constants/constants.dart';

class APPBarWidget extends StatelessWidget {
  const APPBarWidget({
   Key? key, required this.title}):  super (key:key);
   final String title; 
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,style: GoogleFonts.montserrat(
          fontSize: 30,
          fontWeight:FontWeight.bold
        ),),
        const Spacer(),
        const Icon(Icons.cast,
        color: Colors.white,
        size: 30,),
        kWidth,
        Container(
          height: 30,
          width: 40,
       child: Image.network("https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png"),
        ),
        kWidth
      ],
    );
  }
} 