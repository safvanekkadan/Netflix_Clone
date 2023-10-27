import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:prime_video/model/movie_info_model.dart';
import 'package:prime_video/model/tmdb_api_response.dart';
import 'package:prime_video/service/apiendpoint.dart';
class FetchMovieServices{
     BuildContext context;

  FetchMovieServices({required this.context});

  Future<List<String>> getTrendingMoviesImages() async {
   try {
    List<String> imageList =[];
     final response = await http.get(Uri.parse(ApiendPoint.trendingMovies));
    if (response.statusCode == 200) {
      Map<String, dynamic> data =
          jsonDecode(response.body) as Map<String, dynamic>;
      TMDBApiResponseModel tmdbApiResponse =
          TMDBApiResponseModel.fromjson(data);

          for(MovieInfoModel movieInfo in tmdbApiResponse.results){
             if (movieInfo.posterpath != null) {
            imageList.add('https://image.tmdb.org/t/p/w500${movieInfo.posterpath}?api_key=1ea527c5454d817bc1ffa3293e9a4cc6');
          }
          }
      return imageList;
    } else {
      return [];
    }
     
   } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('An error occurred: $e'),
        ),
      );
   return [];
   
     
   }
  } 



}