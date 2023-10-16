import 'package:flutter/material.dart';
import 'package:prime_video/view/widgets/main_card.dart';

import '../constants/constants.dart';
import 'main_title.dart';

class MainCardTitle extends StatelessWidget {
  const MainCardTitle({
    super.key,
    required this.title
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          MainTitle(
          title: title),
         kHieght,
       LimitedBox(
        maxHeight: 200,
         child: ListView.separated(
          
          scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => MainCard(),
        itemCount: 10,
        separatorBuilder: (context, index) => kWidth,  
        
         ),
       ),
       
      ],
    );
  }
}