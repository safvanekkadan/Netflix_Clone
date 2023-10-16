import 'package:flutter/material.dart';
import 'package:prime_video/view/constants/constants.dart';
import 'package:prime_video/view/home/widgets/number_card.dart';
import 'package:prime_video/view/widgets/main_card.dart';
import '../widgets/main_card_title.dart';
import '../widgets/main_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              MainCardTitle(title: "Release in the past year"),
              kHieght,
              MainCardTitle(title: "Trending Now",),
              kHieght,
               Column(
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
                      ),
              MainCardTitle(title: "Tanse Dramas",),
              kHieght,
              MainCardTitle(title: "Sounth Indians Cinemas",)
            ],
          ),
        )
        
      )
    );
  }
}



