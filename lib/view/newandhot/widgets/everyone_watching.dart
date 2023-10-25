import 'package:flutter/material.dart';

import 'package:prime_video/controller/internetconnectivity_provider.dart';

import 'package:provider/provider.dart';

import '../../../controller/newandhot_provider.dart';

import 'everyone_watching_infocard.dart';



// class EveryonewatchingWidget extends StatelessWidget {
//   final MovieInfoModel movieInfo;
//   const EveryonewatchingWidget({
//     super.key,
//     required this.movieInfo
//   });

//   @override
//   Widget build(BuildContext context) {
//     return   Column(
//     crossAxisAlignment: CrossAxisAlignment.start,  
//       children: [
//         kHieght,
//          Text(movieInfo.originalTitle??"No Title",
//                    style:TextStyle(
//                   color: kwhitecolor,fontSize: 18,
//                   fontWeight: FontWeight.bold) ,),
//                   Text(movieInfo.overview!,

//                   style: TextStyle(
//                   color: kgreycolor,fontSize: 15
//                   ),
//                   ),
//                  kHieght50,
//                   videoWidget(
                    
//                   ),
                  
//                   kHieght,
//                   Row(
//                     mainAxisAlignment:MainAxisAlignment.end ,
//                     children: [
                    
//                        CustomBotton(icon: Icons.telegram_outlined, title: "Share",
//                       iconSize:25 ,textSize: 16,),
//                       kWidth,
//                        CustomBotton(icon: Icons.add, title: "MyList",
//                       iconSize:25 ,textSize: 16,),
//                       kWidth,
//                        CustomBotton(icon: Icons.play_arrow, title: "Play",
//                       iconSize:25 ,textSize: 16,),
//                       kWidth
//                     ],)


//       ],
//     );
//   }
// }
class EveryonesWatchingWidget extends StatefulWidget {
  const EveryonesWatchingWidget({
    super.key,
  });

  @override
  State<EveryonesWatchingWidget> createState() => _EveryonesWatchingWidgetState();
}

class _EveryonesWatchingWidgetState extends State<EveryonesWatchingWidget> {
  @override
  void initState() {

    super.initState();
    Provider.of<NewandHotProvider>(context,listen: false).fetchEveryoneWatchingMovies();
    Provider.of<InternetConnectivityProvider>(context,listen: false).getInternetConnectivity(context);
  }
  @override
  Widget build(BuildContext context) { 
    return  Consumer<NewandHotProvider>(
      builder: (context,provider, child) {
        if (provider.isLoading) {
          return const Center(child: CircularProgressIndicator(),);
        }else if(provider.moviepopular.isEmpty){
          return const Text("No data available");
        }
        return ListView.builder(
            shrinkWrap: true,
            itemCount:provider.moviepopular.length,
            itemBuilder:(context, index) => 
            EveryonesWatchingInfoCard(movieInfo:provider.moviepopular[index],),);
      },
    );
  }
}