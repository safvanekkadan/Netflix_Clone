import 'package:flutter/material.dart';
import 'package:prime_video/model/movie_info_model.dart';
import 'package:prime_video/service/base_client.dart';
import 'package:prime_video/view/widgets/main_card.dart';

import '../../constants/constants.dart';
import 'main_title.dart';

class MainCardTitle extends StatelessWidget {
  const MainCardTitle({
    super.key,
    required this.title,
    required this.apiurl
  });
  final String title;
  final String apiurl;

  @override
  Widget build(BuildContext context) {
    List imageList= [];
    return FutureBuilder(
      future: apiCall(apiurl),
      builder: (context, snapshot) {
        if(!snapshot.hasData){
            const Center(
              child: Column(
                children: [
                  CircularProgressIndicator(
                    color: Colors.blue,
                  ),
                  Text("Please wait")
                ],
              ),
            );
        }
        if(snapshot.data ==null){
          return Text('No data found');
        }
        if(snapshot.hasData){
          imageList=snapshot.data.results.map((MovieInfoModel movieInfo){
            if(movieInfo.posterpath==null){
              return null;
            } String  imageUrl = 'https://image.tmdb.org/t/p/w500${movieInfo.posterpath}?api_key=1ea527c5454d817bc1ffa3293e9a4cc6';
            return imageUrl;
          })
          .toList();
        }
      
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
          itemBuilder: (context, index) => MainCard(
            imageUrlFromApi:imageList[index],
          ),
          itemCount: 10,
          separatorBuilder: (context, index) => kWidth,  
          
           ),
         ),
         
        ],
      );
      }
    );
  }
}