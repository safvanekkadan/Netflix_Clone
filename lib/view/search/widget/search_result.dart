import 'package:flutter/material.dart';
import 'package:prime_video/constants/constants.dart';
import 'package:prime_video/controller/internetconnectivity_provider.dart';
import 'package:prime_video/controller/searchresult_provider.dart';
import 'package:prime_video/model/movie_info_model.dart';
import 'package:prime_video/service/api_key.dart';
import 'package:prime_video/view/search/widget/title.dart';
import 'package:provider/provider.dart';

// class SearchResultWidget extends StatefulWidget {

//   final String apiQuery;
//   const SearchResultWidget({super.key,
//   required this.apiQuery});

//   @override
//   State<SearchResultWidget> createState() => _SearchResultWidgetState();
// }

// class _SearchResultWidgetState extends State<SearchResultWidget> {
//     @override
//   void initState() {
//     super.initState();
//        Provider.of<SearchResultProvider>(context,listen: false).fetchSearchResult(widget.apiQuery);
//       Provider.of<InternetConnectivityProvider>(context,listen: false).getInternetConnectivity(context);
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const SearchTextTItle(title: "Movies & TV"),
//         const SizedBox(height: 10,),
//         Expanded(child: Consumer<SearchResultProvider>(
//           builder: (context, provider, child) {
//         //Provider.of<SearchResultProvider>(context,listen: false).fetchSearchResult(widget.apiQuery);
//           return GridView.count(
//             crossAxisCount: 3,
//             mainAxisSpacing: 8,
//             crossAxisSpacing:8,
//             childAspectRatio: 1/1.5,
//             shrinkWrap: true,
//             children: List.generate(
//               provider.searchResultMovies.length, (index) {
//                 MovieInfoModel movieInfo = provider.searchResultMovies[index];
//                 if(movieInfo.posterpath !=null){
//                  String imageUrl ="https://image.tmdb.org/t/p/w500${movieInfo.posterpath}?api_key=$apikey";
//                   return   MainCard(
//                     imageUrl: imageUrl,
//                   );
//                 }
//                 return const SizedBox();
              
//             },
//             ),
//             );
//           },
//         ),
//         ),
//       ],
//     );
//   }
// }
// class MainCard extends StatelessWidget {

//   final String imageUrl;
//   const MainCard({super.key,
//   required this.imageUrl});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration:BoxDecoration(
//         image:  DecorationImage(image: NetworkImage(imageUrl),
//         fit: BoxFit.contain),
//         borderRadius: BorderRadius.circular(5)
//       ),
//     );
//   }
// }
class SearchResultWidget extends StatefulWidget {
  final String apiQuery;
   const SearchResultWidget({super.key,required this.apiQuery});

  @override
  State<SearchResultWidget> createState() => _SearchResultWidgetState();
}

class _SearchResultWidgetState extends State<SearchResultWidget> {
  @override
  void initState() {
    super.initState();
      Provider.of<InternetConnectivityProvider>(context,listen: false).getInternetConnectivity(context);
  }
  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTItle(title: "Movies & TV"),
        kHieght,
        Expanded(child: Consumer<SearchResultProvider>(
          
          builder: (context, provider, child) {
             Provider.of<SearchResultProvider>(context,listen: false).fetchSearchResult(context, widget.apiQuery);
            return  GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 1/1.4,
              children:List.generate(provider.searchResultMovies.length, (index){
                MovieInfoModel movieInfo = provider.searchResultMovies[index];
                  if (movieInfo.posterpath!=null ) {
              String imageUrl = 'https://image.tmdb.org/t/p/w500${movieInfo.posterpath}?api_key=$apikey';
              return MainCard(imageUrl: imageUrl);
            }
            return const SizedBox();
              }),);
          },
         
        ))
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  final String imageUrl;
   const MainCard({super.key,required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(imageUrl),
        fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(7)
      ),
    );
  }
}