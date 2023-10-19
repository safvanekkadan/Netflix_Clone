
import 'package:prime_video/model/movie_info_model.dart';
import 'package:prime_video/service/apiendpoint.dart';
import 'package:prime_video/service/base_client.dart';

class searchIdleServices{
  List<MovieInfoModel>trendingMovies =[];
  Future fetchSearchMovies()async{
    try{
      final  movie= await apiCall(ApiendPoint.trendingMovies);
      trendingMovies=movie.results;
    }catch(error){
      print('Error fetching trending movies:$error');
    }
    return trendingMovies;
  }

}