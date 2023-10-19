import 'dart:convert';

import 'package:prime_video/model/movie_info_model.dart';
import 'package:prime_video/model/tmdb_api_response.dart';
import 'package:prime_video/service/apiendpoint.dart';
import 'package:http/http.dart' as http;
class DownloadServices{
  Future<List<String>> getTrendingMovies()async{
    try{
      List<String>imagelist=[];
      final response =await http.get(Uri.parse(ApiendPoint.trendingMovies));
      if(response.statusCode==200){
        Map<String, dynamic>data=
        jsonDecode(response.body)as Map<String,dynamic>;
        TmdbApiResponseModel tmdbApiResponse=
        TmdbApiResponseModel.fromjson(data);

        for(MovieInfoModel movieInfo in tmdbApiResponse.results){
          if(movieInfo.posterpath!=null){
            imagelist.add("https://image.tmdb.org/t/p/w500${movieInfo.posterpath}?api_key=1ea527c5454d817bc1ffa3293e9a4cc6");

          }

         }
         return imagelist;
      }else{
        return [];
      }
    }catch(e){
      return [];
    }
  }
}