import 'package:flutter/widgets.dart';
import 'package:prime_video/model/movie_info_model.dart';
import 'package:prime_video/service/searchidle_service.dart';
class SearchIDLProvider extends ChangeNotifier{
  List<MovieInfoModel> trendingMovies=[];
  bool isLoading=true;

Future fetchSearchIDLMovies()async{
trendingMovies=await SearchIDLServices().fetchSearchMovies();
isLoading=false;
notifyListeners();

} 

}