
import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../widgets/main_title.dart';
import 'number_card.dart';

class NUmberTitleCard extends StatelessWidget {
  const NUmberTitleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(  
     crossAxisAlignment: CrossAxisAlignment.start,
       children: [
        MainTitle(
        title:"Top 10 Tv Shows In India Today"),
         kHieght,
     LimitedBox(
      maxHeight: 200,
        child: ListView.separated(
          
              scrollDirection: Axis.horizontal,
               itemBuilder: (context, index) => NumberCard(index: index,),
                itemCount: 10,
                 separatorBuilder: (context, index) => kWidth,  
                 ),
               ),
              ],
           );
  }
}