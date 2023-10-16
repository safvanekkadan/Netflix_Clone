import 'package:flutter/material.dart';

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
            const SizedBox(width: 50,
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
          left: 10,
          bottom: 10,
          child: Text("$index",style: TextStyle(
            fontSize: 150,
            fontWeight: FontWeight.w400
          ),),
        )
      ],
    );
  }
}