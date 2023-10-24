import 'package:flutter/material.dart';
import 'package:prime_video/constants/colors.dart';

import '../../constants/constants.dart';
import 'widgets/comingsoon.dart';
import 'widgets/everyone_watching.dart';

class NewAndHotScreen extends StatelessWidget {
  const NewAndHotScreen({super.key});

  @override
  Widget build(context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar:PreferredSize(
          preferredSize:const Size.fromHeight(80) , 
          child: AppBar(
            title: const Text("New & Hot",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),),
            actions: [
             const Icon(Icons.cast,
          color: Colors.white,
          size: 30,),
          kWidth,
          Container(
            height: 30,
            width: 40,
            color: kgreycolor,
            //Image.network("https://img.freepik.com/premium-psd/3d-cartoon-man-smiling-portrait-isolated-transparent-background-png-psd_888962-1570.jpg"),
          ),
          kWidth,
          ],
        
          bottom:TabBar(
            isScrollable: true,
            unselectedLabelColor: Colors.white,
            labelColor: Colors.black,
            labelStyle: const TextStyle(fontSize:16,fontWeight: FontWeight.bold),
              indicator: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.circular(30)
              ),      
          tabs: const [
            Tab(
              text:"🍿Coming Soon"),
              Tab(
                text: "👀 Everyone's Watching",
              ),
          ],
          )),
        ),
         
        body:
//          TabBarView(children: [
//           _buildComingsoon(),
//           _buildEveryonewatcing()
//         ])
//       ),
//     );
//   }

// }

// _buildComingsoon() {
  
//      return Consumer<NewandHotProvider>(
//        builder: (context, comingsoon, child) {
//          if (comingsoon.isLoading) {
//           return const Center(child: CircularProgressIndicator(),);
//         }else if(comingsoon.moviepopular.isEmpty){
//           return const Text("No data available");
//         }
//          return ListView.builder(
        
//         itemBuilder:(context, index) =>
//           ComingsoonWidget(
//             movieInfo: comingsoon.upcomingMovies[index],
//           ),
     
//        itemCount:comingsoon.upcomingMovies.length,
//         );
//        },
//      );

// }


// _buildEveryonewatcing() {
//   return Consumer<NewandHotProvider>(

//     builder: (context, value, child) {
//      if (value.isLoading) {
//           return const Center(child: CircularProgressIndicator(),);
//         }else if(value.moviepopular.isEmpty){
//           return const Text("No data available");
//         }
//     return ListView.builder(
//       shrinkWrap: true,
//       itemBuilder: (context, index) =>  EveryonewatchingWidget(
//         movieInfo:value.upcomingMovies[index] ,
//       ),
//       itemCount: value.moviepopular.length,
//       );
//     }
//   );
// }




        TabBarView(
            children: [_buildComingSoon(context),
             _BuildEveryonesWatching()
             ],
          )),
    );
  }
}

Widget _BuildEveryonesWatching() {
  return const EveryonesWatchingWidget();
}

Widget _buildComingSoon(BuildContext context) {
  return const ComingSoonWidget();
    }

  