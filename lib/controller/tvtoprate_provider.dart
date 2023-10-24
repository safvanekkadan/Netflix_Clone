import 'package:flutter/widgets.dart';
import 'package:prime_video/model/movie_info_model.dart';
import 'package:prime_video/service/tvtoprate_services.dart';

class TvTopRateProvider extends ChangeNotifier{

  List<MovieInfoModel> tvtopRate=[];
  bool isLoading =true;

  TvTopRateProvider(){
    fetchTVTopRateMovies();
  }
  
  Future fetchTVTopRateMovies()async{
    tvtopRate =await TvTopRateServices().fetchTVTopRateMovies();
    isLoading=false;
    notifyListeners();
  }
}