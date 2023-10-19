import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prime_video/model/movie_info_model.dart';

import '../../constants/colors.dart';
import '../../constants/constants.dart';
import '../../home/custom_bottom.dart';
import '../../widgets/video_widget.dart';

class ComingsoonWidget extends StatelessWidget {

  final MovieInfoModel movieInfo;
  
  const ComingsoonWidget({
    super.key,
    required this.movieInfo
  });

  

  @override
  Widget build(BuildContext context) {
    String imageUrl ='https://image.tmdb.org/t/p/w500${movieInfo.posterpath}?api_key=1ea527c5454d817bc1ffa3293e9a4cc6';
    Size size =MediaQuery.of(context).size;
    return Row(
      children: [
        const SizedBox(
          height: 500,
          width: 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("FEB",style: TextStyle(
                color: kgreycolor,fontSize: 18),),
              Text("11",style: TextStyle(
                fontSize: 40,
                letterSpacing: 3,
                
                fontWeight: FontWeight.bold
              ),),
            ],
          ),
        ),
        SizedBox(
          height: 485,
          width:size.width-50,
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const videoWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("TALL GIRL 2",
                style: GoogleFonts.kaushanScript(
                  textStyle: const TextStyle(
                    letterSpacing: -3,
                      fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                  ),
                 
                ),
                ),
                const Spacer(),
                const Row(
                  children: [
                    CustomBotton(icon: Icons.notifications_none, title: "Remind Me",
                    iconSize:20 ,textSize: 10,),
                    kWidth,
                    CustomBotton(icon: Icons.info_outline, title: "Info",
                    iconSize: 20,textSize: 10,
                    ),
                    kWidth
                  ],

                ),
                
              ],
            ),
            kHieght,
                 const Text("Coming on Friday"),
                 kHieght,
                 const Text("Tall Girl 2",
                 style:TextStyle(
                color: kwhitecolor,fontSize: 18,
                fontWeight: FontWeight.bold) ,),
                const Text("Landing the lead in the school musical is a dream come true for jodi ,until the pressure sends her confidence --and her reletionship-- into a talispan.",
                style: TextStyle(
                color: kgreycolor,fontSize: 15),)
          ],
         ),
        ),
      ],
    );
  }
}

