
import 'package:flutter/material.dart';
import 'package:prime_video/controller/tvtoprate_provider.dart';
import 'package:prime_video/model/movie_info_model.dart';
import 'package:provider/provider.dart';

import '../../constants/constants.dart';
import '../../widgets/main_title.dart';
import 'number_card.dart';

class NUmberTitleCard extends StatelessWidget {
  const NUmberTitleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List imageList= [];
    return Consumer<TvTopRateProvider>(
      builder: (context, value, child) {
         if(value.isLoading){
          return const Center(
            child: CircularProgressIndicator(),
          );
         }else if(value.tvtopRate.isEmpty){
          return const Text("No data available");
         }

         imageList =value.tvtopRate.map((MovieInfoModel movieInfo){
           if(movieInfo.posterpath==null){
            return null;
           }
           String imageUrl ='https://image.tmdb.org/t/p/w500${movieInfo.posterpath}?api_key=1ea527c5454d817bc1ffa3293e9a4cc6';

           return imageUrl;
         }).toList();
     return Column(  
       crossAxisAlignment: CrossAxisAlignment.start,
         children: [
          MainTitle(
          title:"Top 10 Tv Shows In India Today"),
           kHieght,
       LimitedBox(
        maxHeight: 200,
          child: ListView(
            
                scrollDirection: Axis.horizontal,
                children:List.generate(10, (index) => NumberCard(index: index,imageUrl: imageList[index]),
                 
                     
                   ),
                 ),
       ),
         ],
             );
             
      }
    );
  }
}