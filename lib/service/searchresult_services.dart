import 'dart:developer';
import 'package:prime_video/model/movie_info_model.dart';
import 'package:prime_video/service/apiendpoint.dart';
import 'package:prime_video/service/base_client.dart';


class SearchResultServices{
  List<MovieInfoModel>searchResultMovies=[];

  Future fetchSearchResultMovies(String apiQuery)async{
    try {
      final movies=await apiCall(ApiendPoint.searchmovie + apiQuery);
      searchResultMovies=movies.results;
      
    } catch (error) {
      log("Error fetching trendng movies:$error");
    }
    return searchResultMovies;
  }
}