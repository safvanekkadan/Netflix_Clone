import 'package:flutter/widgets.dart';
import 'package:prime_video/model/movie_info_model.dart';
import 'package:prime_video/service/searchidle_service.dart';

class SearchIdleProvider extends ChangeNotifier{
  List<MovieInfoModel>trendingMovies =[];
  bool isLoading =true;
  SearchIdleProvider(){
    fetchSearchIdlMovies();
    
    
    
  }
  Future fetchSearchIdlMovies() async{
    trendingMovies =await searchIdleServices().fetchSearchMovies();
    isLoading=false;
    notifyListeners();
  }
}