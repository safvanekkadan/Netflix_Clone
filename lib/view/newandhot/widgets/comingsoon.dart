import 'package:flutter/material.dart';

import 'package:prime_video/controller/internetconnectivity_provider.dart';
import 'package:prime_video/controller/newandhot_provider.dart';

import 'package:provider/provider.dart';

import 'coming_soo_info.dart';

// class ComingsoonWidget extends StatelessWidget {
// final MovieInfoModel movieInfo;
  
//  ComingsoonWidget({
//     super.key,
//    required this.movieInfo
  
//   });

  

//   @override
//   Widget build(BuildContext context) {
//     String imageUrl ='https://image.tmdb.org/t/p/w500${movieInfo.posterpath}?api_key=1ea527c5454d817bc1ffa3293e9a4cc6';
//     Size size =MediaQuery.of(context).size;
//     return Row(
//       children: [
//        SizedBox(
//           height: 500,
//           width: 50,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Text(fetchDate(movieInfo.releaseDate!),style: TextStyle(
//                 color: kgreycolor,fontSize: 18),),
//               Text(fetchDay(movieInfo.releaseDate!),style: TextStyle(
//                 fontSize: 40,
//                 letterSpacing: 3,
                
//                 fontWeight: FontWeight.bold
//               ),),
//             ],
//           ),
//         ),
//         SizedBox(
//           height: 485,
//           width:size.width-50,
//          child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const videoWidget(
              
//             ),
//             const Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 // Text("TALL GIRL 2",
//                 // style: GoogleFonts.kaushanScript(
//                 //   textStyle: const TextStyle(
//                 //     letterSpacing: -3,
//                 //       fontSize: 35,
//                 //   fontWeight: FontWeight.bold,
//                 //   color: Colors.white
//                 //   ),
                 
//                 // ),
//                 // ),
//                 Spacer(),
//                 Row(
//                   children: [
//                     CustomBotton(icon: Icons.notifications_none, title: "Remind Me",
//                     iconSize:20 ,textSize: 10,),
//                     kWidth,
//                     CustomBotton(icon: Icons.info_outline, title: "Info",
//                     iconSize: 20,textSize: 10,
//                     ),
//                     kWidth
//                   ],

//                 ),
                
//               ],
//             ),
//             kHieght,
//                   Text("Coming on Friday${fetchDay(movieInfo.releaseDate!)}"),
//                  kHieght,
//                   Text(movieInfo.originalTitle??'Empty Title',
//                  style:const TextStyle(
//                 color: kwhitecolor,fontSize: 18,
//                 fontWeight: FontWeight.bold) ,),
//                 kHieght,
//                  Text(movieInfo.overview!,
//                 style: const TextStyle(
//                 color: kgreycolor,fontSize: 15),)
//           ],
//          ),
//         ),
//       ],
//     );
//   }
//   String fetchDate(String date){
//     DateTime dateInFormat =DateTime.parse(date);
//     final formatDate =(DateFormat.MMMMd().format(dateInFormat)).split("");

//     return "${formatDate.first.substring(0,3)} \n${formatDate.last}";
//   }
//   String fetchDay(String date){
//     DateTime dateInFormat =DateTime.parse(date);
//     final dayName =DateFormat("EEEE").format(dateInFormat);
//     return dayName;
//   }
// }


class ComingSoonWidget extends StatefulWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  State<ComingSoonWidget> createState() => _ComingSoonWidgetState();
}

class _ComingSoonWidgetState extends State<ComingSoonWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<NewandHotProvider>(context,listen: false).fetchComingsoonMovies();
    Provider.of<InternetConnectivityProvider>(context,listen: false).getInternetConnectivity(context);
  }
  @override
  Widget build(BuildContext context) {
     
    return Consumer<NewandHotProvider>(
      builder: (context, comingSoonProvider, child) {
        if (comingSoonProvider.isLoading) {
          return const Center(child: CircularProgressIndicator(),);
          
        }else if(comingSoonProvider.upcomingMovies.isEmpty){
          return const Text("No data available");
        }
        return ListView.builder(
            itemCount:comingSoonProvider.upcomingMovies.length,
            itemBuilder:(
              
              context, index) => ComingSoonInfoCard(movieInfo: comingSoonProvider.upcomingMovies[index]),);
      },
  
    );
  }
}

