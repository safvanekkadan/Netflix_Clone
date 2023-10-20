
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key,
  required this.index,
  required this.imageUrl
  });
  final int index;
  final String imageUrl;
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
              image: DecorationImage(
                 fit: BoxFit.cover,
                image: NetworkImage(imageUrl),
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