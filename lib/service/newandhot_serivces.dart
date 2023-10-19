import 'package:prime_video/model/movie_info_model.dart';
import 'package:prime_video/service/apiendpoint.dart';
import 'package:prime_video/service/base_client.dart';

class NewandHotServices{
  List<MovieInfoModel> upcomingMovies =[];
  List<MovieInfoModel>moviepopular =[];

  Future fetchUpcomingMovies()async{
    try{
      final movies =await apiCall(ApiendPoint.upcoming);
      upcomingMovies =movies.results;

    }catch(error){
      print("Error fetching trending movies :$error");
    }
    return upcomingMovies;
  }

  Future fetchMoviePopular()async{
    try{
      final movies =await apiCall(ApiendPoint.moviepopular);
      moviepopular =movies.results;

    }catch(error){
      print("Error fetching trending Movies: $error");
    }
    return moviepopular;
  }
}