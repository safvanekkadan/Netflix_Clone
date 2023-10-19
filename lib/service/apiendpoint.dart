import 'package:prime_video/service/api_key.dart';
import 'package:prime_video/view/constants/string.dart';

class ApiendPoint{


  static const trendingMovies ="$kbaseurl/trending/all/day?api_key=$apikey";
  static const searchmovie ='$kbaseurl/serach/movie/?api_key=$apikey&query=';
  static const upcoming ='$kbaseurl/movie/upcoming?api_key=$apikey&language=en-US&page=1';
  static const moviepopular ='$kbaseurl/movie/popular?api_key=$apikey&language=en-US&page=1';

}