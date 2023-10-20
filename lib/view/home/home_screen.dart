import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:prime_video/service/apiendpoint.dart';
import 'package:prime_video/view/constants/constants.dart';
import 'package:prime_video/view/home/bakcground_card.dart';
import '../widgets/main_card_title.dart';
 
import 'widgets/number_title_card.dart';
ValueNotifier<bool> ScrollNotifier =ValueNotifier(true);
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:ValueListenableBuilder(
        valueListenable: ScrollNotifier,
        builder: (context, value, child) {
          return  NotificationListener<UserScrollNotification>(
        onNotification: (notification){
          final ScrollDirection direction = notification.direction;
          if(direction==ScrollDirection.reverse){
            ScrollNotifier.value=false;
          }else if(direction ==ScrollDirection.forward){
            ScrollNotifier.value=true;
          }
          return true;
        },
        child: Stack(
          children: [
            ListView(
              children:  [
                BAckgroundCard(),
                
                 MainCardTitle(title: "Release in the past year",
                 apiurl: ApiendPoint.moviepopular),
                kHieght,
                const MainCardTitle(title: "Trending Now",
                apiurl: ApiendPoint.trendingMovies),
                kHieght,
                 const NUmberTitleCard(),
                const MainCardTitle(title: "Popular Shows",
                apiurl:ApiendPoint.tvpopular ,
                ),
                kHieght,
                const MainCardTitle(title: "Upcoming",
                apiurl: ApiendPoint.upcoming,)
              ],
            ),
           ScrollNotifier.value==true ? 
             AnimatedContainer(
              duration: const Duration(milliseconds: 1000),
              width:double.infinity ,
              height: 90,
              color: Colors.black.withOpacity(0.3),
              child: Column(
                children: [
                  Row(
                    children: [
                       Image.network("https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/227_Netflix_logo-512.png",
                   width:70,
                   height: 50,),
                   Spacer(),
                    const Icon(Icons.cast,
                           color: Colors.white,
                           size: 30,),
                           const SizedBox(width: 10),
                           Container(
                             height: 30,
                             width: 40,
                             color: Colors.blue,
                           ),
                           kWidth
                                       ],
                    
                  ),
                  kHieght,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("TV Shows",
                      style: Khometitletext),
                  Text("Movies",
                      style: Khometitletext),
                  Text("Categories",
                      style: Khometitletext)
                    ],
                  )
                  
                   
                   
                ],
              ),
            ):kHieght,
          ],
        ),
      );
          
        },
        ),
    );
  }

}





 