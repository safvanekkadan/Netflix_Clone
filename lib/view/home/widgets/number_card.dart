
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key,
  required this.index
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(width:50,
            height: 150,),
            Container(
              height: 250,
              width: 150,
             decoration: BoxDecoration(
              borderRadius: kRadius10,
              image:const DecorationImage(
                 fit: BoxFit.cover,
                image: NetworkImage("https://www.themoviedb.org/t/p/w600_and_h900_bestv2/bAZFkReuav0fyCVmWXBeUB93nAe.jpg"),
                ), 
             ),
            ),
          ],
        ),
        Positioned(
         // left: 5,
          bottom: 0,
          top: 50,
          child: BorderedText(
            strokeColor: Colors.white,
            strokeCap: StrokeCap.butt,
            strokeWidth: 4,
            child: Text("${index+1}",style: GoogleFonts.bebasNeue(
               textStyle :TextStyle(
              fontSize: 150,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
              color: Colors.black
            ),),
            ),
            
          ),
        )
      ],
    );
  }
}