import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prime_video/controller/searchidle_provider.dart';
import 'package:prime_video/model/movie_info_model.dart';
import 'package:prime_video/view/search/widget/title.dart';
import 'package:provider/provider.dart';
//  final imagelistidle =[
//     "https://www.themoviedb.org/t/p/w533_and_h300_bestv2/dXvzWuo3qAxWFQib0IGOPH8hztW.jpg",

//   ];
class SearchIdle extends StatelessWidget {
   const SearchIdle({super.key});
 

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTItle(title: "Top Searches"),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Consumer<SearchIdleProvider>(
                builder: (context, value, child) {
                if(value.isLoading){
                return const Center(child: CircularProgressIndicator(),);
              }else if(value.trendingMovies.isEmpty){
                return const Text("NO data available");

              }
              return ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (ctx, index)=>  TopSearchItemTile(
                    MovieInfo: value.trendingMovies[index],
                    
                  ),
                  separatorBuilder: (ctx,index)=>const SizedBox(
                    height: 20,
                  ),
                  itemCount: value.trendingMovies.length);
                }
              ),
  
              
            )
      ],
    );
  }
}


class  TopSearchItemTile extends StatelessWidget {
  final MovieInfoModel MovieInfo;
  const  TopSearchItemTile({super.key,
  required this.MovieInfo});

  @override
  Widget build(BuildContext context) {
    final screenwidth =MediaQuery.of(context).size.width;
    String url ="https://image.tmdb.org/t/p/w500${MovieInfo.posterpath}?api_key=1ea527c5454d817bc1ffa3293e9a4cc6";
    return Row(
      children: [
        Container(
          width:screenwidth* 0.35,
          height: 80,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
            image: NetworkImage(url))
          ),
        ),
        const Expanded(child: Text("Movie Name",style: 
        TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold
        ),)),
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Icon(CupertinoIcons.play_circle,
          color: Colors.white,
          size: 50,),
        )
      ],
    );
  }
}