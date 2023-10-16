import 'package:flutter/material.dart';

import '../constants/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 150,
     decoration: BoxDecoration(
      borderRadius: kRadius10,
      image:const DecorationImage(
         fit: BoxFit.cover,
        image: NetworkImage("https://www.themoviedb.org/t/p/w600_and_h900_bestv2/bAZFkReuav0fyCVmWXBeUB93nAe.jpg"),
        ), 
     ),
    );
  }
}