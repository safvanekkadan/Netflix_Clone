import 'package:flutter/material.dart';
import 'package:prime_video/model/movie_info_model.dart';
import 'package:prime_video/service/searchresult_services.dart';
class SearchResultProvider extends ChangeNotifier{
   List<MovieInfoModel>searchResultMovies=[];
   
   

   Future fetchSearchResult( BuildContext context,  String apiQuery)async{
   searchResultMovies=await SearchResultServices( ).fetchSearchResultMovies(context,apiQuery);
    notifyListeners();
   }
}