
import 'package:flutter/foundation.dart';

import 'package:prime_video/model/movie_info_model.dart';
import 'package:prime_video/service/newandhot_serivces.dart';

class NewandHotProvider extends ChangeNotifier{
  List<MovieInfoModel> upcomingMovies =[];
  List<MovieInfoModel>moviepopular= [];
  bool isLoading =true;

 
  
  Future fetchComingsoonMovies()async{
    upcomingMovies =await NewandHotServices().fetchUpcomingMovies();
    notifyListeners();
  }
  Future fetchEveryoneWatchingMovies()async{
    moviepopular =await NewandHotServices().fetchMoviePopular();
    isLoading=false;
    notifyListeners();
  }
}