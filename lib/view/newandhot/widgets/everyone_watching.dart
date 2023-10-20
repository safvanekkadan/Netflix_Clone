import 'package:flutter/material.dart';
import 'package:prime_video/model/movie_info_model.dart';

import '../../constants/colors.dart';
import '../../constants/constants.dart';
import '../../home/custom_bottom.dart';
import '../../widgets/video_widget.dart';



class EveryonewatchingWidget extends StatelessWidget {
  final MovieInfoModel movieInfo;
  const EveryonewatchingWidget({
    super.key,
    required this.movieInfo
  });

  @override
  Widget build(BuildContext context) {
    return   Column(
    crossAxisAlignment: CrossAxisAlignment.start,  
      children: [
        kHieght,
         Text(movieInfo.originalTitle??"No Title",
                   style:TextStyle(
                  color: kwhitecolor,fontSize: 18,
                  fontWeight: FontWeight.bold) ,),
                  Text(movieInfo.overview!,

                  style: TextStyle(
                  color: kgreycolor,fontSize: 15
                  ),
                  ),
                 kHieght50,
                  videoWidget(
                    
                  ),
                  
                  kHieght,
                  Row(
                    mainAxisAlignment:MainAxisAlignment.end ,
                    children: [
                    
                       CustomBotton(icon: Icons.telegram_outlined, title: "Share",
                      iconSize:25 ,textSize: 16,),
                      kWidth,
                       CustomBotton(icon: Icons.add, title: "MyList",
                      iconSize:25 ,textSize: 16,),
                      kWidth,
                       CustomBotton(icon: Icons.play_arrow, title: "Play",
                      iconSize:25 ,textSize: 16,),
                      kWidth
                    ],)


      ],
    );
  }
}
