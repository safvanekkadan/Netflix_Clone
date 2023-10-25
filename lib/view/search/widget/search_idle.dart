import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prime_video/constants/colors.dart';
import 'package:prime_video/constants/constants.dart';
import 'package:prime_video/controller/internetconnectivity_provider.dart';
import 'package:prime_video/controller/searchidle_provider.dart';
import 'package:prime_video/model/movie_info_model.dart';
import 'package:prime_video/view/search/widget/title.dart';
import 'package:provider/provider.dart';
// class SearchIdle extends StatefulWidget {
//    const SearchIdle({super.key});

//   @override
//   State<SearchIdle> createState() => _SearchIdleState();
// }

// class _SearchIdleState extends State<SearchIdle> {
//    @override
//   void initState() {
//     super.initState();
//     Provider.of<SearchIdleProvider>(context, listen: false).fetchSearchIdlMovies();
//         Provider.of<InternetConnectivityProvider>(context,listen: false).getInternetConnectivity(context);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const SearchTextTItle(title: "Top Searches"),
//             const SizedBox(
//               height: 10,
//             ),
//             Expanded(
//               child: Consumer<SearchIdleProvider>(
//                 builder: (context, value, child) {
//                 if(value.isLoading){
//                 return const Center(child: CircularProgressIndicator(),);
//               }else if(value.trendingMovies.isEmpty){
//                 return const Text("No data available");

//               }
//               return ListView.separated(
//                   shrinkWrap: true,
//                   itemBuilder: (context, index)=>  TopSearchItemTile(
//                     movieInfo: value.trendingMovies[index]),
//                   separatorBuilder: (context,index)=>const SizedBox(height: 20, ),
//                   itemCount: value.trendingMovies.length);
//                 }
//               ),
//             ),
//       ],
//     );
//   }
// }


// class  TopSearchItemTile extends StatelessWidget {
//   final MovieInfoModel movieInfo;
//   const  TopSearchItemTile({super.key,
//   required this.movieInfo});

//   @override
//   Widget build(BuildContext context) {
//     final screenwidth =MediaQuery.of(context).size.width;
//     String url ="https://image.tmdb.org/t/p/w500${movieInfo.posterpath}?api_key=1ea527c5454d817bc1ffa3293e9a4cc6";
//     return Row(
//       children: [
//         Container(
//           width:screenwidth* 0.35,
//           height: 80,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               fit: BoxFit.cover,
//             image: NetworkImage(url),
//             ),
//              borderRadius: BorderRadius.circular(8),
//           ),
//         ),
//          Expanded(child: Text(movieInfo.title??"No Movie Name",style: 
//         const TextStyle(
//           color: Colors.white,
//           fontSize: 16,
//           fontWeight: FontWeight.bold
//         ),)),
//         const Padding(
//           padding: EdgeInsets.all(10.0),
//           child: Icon(CupertinoIcons.play_circle,
//           color: Colors.white,
//           size: 50,),
//         )
//       ],
//     );
//   }
// }
class SearchIdleWidget extends StatefulWidget {
  const SearchIdleWidget({super.key});

  @override
  State<SearchIdleWidget> createState() => _SearchIdleWidgetState();
}

class _SearchIdleWidgetState extends State<SearchIdleWidget> {
  @override
  void initState() {
    super.initState();
    Provider.of<SearchIDLProvider>(context, listen: false).fetchSearchIDLMovies();
        Provider.of<InternetConnectivityProvider>(context,listen: false).getInternetConnectivity(context);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTItle(
          title: "Top Searches",
        ),
        kHieght,
        Expanded(
          child: Consumer<SearchIDLProvider>(
            builder: (context, value, child) {
              if(value.isLoading){
                return const Center(child: CircularProgressIndicator(),);
              }else if(value.trendingMovies.isEmpty){
                return const Text("NO data available");

              }
              return ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) =>
                    TopSearchItemTile(movieInfo: value.trendingMovies[index]),
                separatorBuilder: (context, index) => kHieght20,
                itemCount: value.trendingMovies.length,
              );
            },
          ),
        )
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  final MovieInfoModel movieInfo;
  const TopSearchItemTile({super.key, required this.movieInfo});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    String url =
        'https://image.tmdb.org/t/p/w500${movieInfo.posterpath}?api_key=1ea527c5454d817bc1ffa3293e9a4cc6';

    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 80,
          decoration: BoxDecoration(
              image:
                  DecorationImage(fit: BoxFit.fill, image: NetworkImage(url))),
        ),
        kWidth,
        Expanded(
          child: Text(
            movieInfo.title ?? "No Movie Name Found",
            style: const TextStyle(
                color: kwhitecolor, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        const CircleAvatar(
          backgroundColor: kwhitecolor,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: Colors.black,
            radius: 23,
            child: Icon(
              CupertinoIcons.play_fill,
              color: kwhitecolor,
            ),
          ),
        )
      ],
    );
  }
}
