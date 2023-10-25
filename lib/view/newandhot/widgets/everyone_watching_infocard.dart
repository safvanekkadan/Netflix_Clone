import 'package:flutter/material.dart';
import 'package:prime_video/constants/colors.dart';
import 'package:prime_video/constants/constants.dart';
import 'package:prime_video/view/widgets/video_widget.dart';

import '../../../model/movie_info_model.dart';
import '../../home/custom_bottom.dart';

class EveryonesWatchingInfoCard extends StatelessWidget {
  const EveryonesWatchingInfoCard({super.key,required this.movieInfo});
 final MovieInfoModel movieInfo;
  @override
  Widget build(BuildContext context) {
     String imageUrl =
        'https://image.tmdb.org/t/p/w500${movieInfo.posterpath}?api_key=1ea527c5454d817bc1ffa3293e9a4cc6';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        kHieght,
         Text(
                  movieInfo.originalTitle ?? "No Title Found ",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                kHieght,
              Text(
                    movieInfo.overview??"no",
                       style: const TextStyle(
                       color: kgreycolor
                  ),
                  ),
                  kHieght50,
                  videoWidget(videoImage: imageUrl),
                  kHieght,
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                        CustomBotton(
                          icon: Icons.share,
                          title: "Share",
                          iconSize: 25,
                          textSize: 16,
                        ),
                        kWidth,

                          CustomBotton(
                          icon: Icons.add,
                          title: "My List",
                          iconSize: 25,
                          textSize: 16,
                        ),
                         kWidth,
                          CustomBotton(
                          icon: Icons.play_arrow,
                          title: "Play",
                          iconSize: 25,
                          textSize: 15,
                        ),
                        kWidth
                    ],
                  )
      ],
    );
  }
}