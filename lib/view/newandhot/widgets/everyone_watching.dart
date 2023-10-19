import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/constants.dart';
import '../../home/custom_bottom.dart';
import '../../widgets/video_widget.dart';



class EveryonewatchingWidget extends StatelessWidget {
  const EveryonewatchingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  const Column(
    crossAxisAlignment: CrossAxisAlignment.start,  
      children: [
        kHieght,
         Text("Friends",
                   style:TextStyle(
                  color: kwhitecolor,fontSize: 18,
                  fontWeight: FontWeight.bold) ,),
                  Text("This hit sitcorn follows the merry misadventures of six 20-something pals as they navigate the pitfalls of work,life and love and in 1990s Manhattan.",

                  style: TextStyle(
                  color: kgreycolor,fontSize: 15
                  ),
                  ),
                 kHieght50,
                  videoWidget(),
                  
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
