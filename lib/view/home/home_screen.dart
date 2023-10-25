import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:prime_video/controller/home_scrollprovider.dart';
import 'package:prime_video/service/apiendpoint.dart';
import 'package:prime_video/constants/constants.dart';
import 'package:prime_video/view/home/bakcground_card.dart';
import 'package:provider/provider.dart';
import '../../controller/internetconnectivity_provider.dart';
import '../widgets/main_card_title.dart';
 
import 'widgets/number_title_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   @override
  void initState() {
    super.initState();
    Provider.of<InternetConnectivityProvider>(context,listen: false).getInternetConnectivity(context);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Consumer<HomeScrollProvider>(
        builder: (context, value, child) {
          return  NotificationListener<UserScrollNotification>(
        onNotification: (notification){
          final ScrollDirection direction = notification.direction;
          if(direction==ScrollDirection.reverse){
            value.setIsScrolling(false);
          }else if(direction ==ScrollDirection.forward){
            value.setIsScrolling(true);
          }
          return true;
        },
        child: Stack(
          children: [
            ListView(
              children:const   [
                BackgroundCard(),
                
                 MainCardTitle(title: "Release in the past year",
                 apiurl: ApiendPoint.moviepopular),
                kHieght,
                MainCardTitle(title: "Trending Now",
                apiurl: ApiendPoint.trendingMovies),
                kHieght,
                  NUmberTitleCard(),
                 MainCardTitle(title: "Popular Shows",
                apiurl:ApiendPoint.tvpopular ,
                ),
                kHieght,
               MainCardTitle(title: "Upcoming",
                apiurl: ApiendPoint.upcoming,)
              ],
            ),
           value.isScrolling==true 
            ? AnimatedContainer(
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
                   const Spacer(),
                    const Icon(Icons.cast,
                           color: Colors.white,
                           size: 30,),
                           const SizedBox(width: 10),
                           SizedBox(
                             height: 30,
                             width: 40,
                             child: Image.network("https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png"),
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





 