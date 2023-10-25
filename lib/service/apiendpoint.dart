import 'package:prime_video/service/api_key.dart';
import 'package:prime_video/constants/string.dart';

class ApiendPoint{

  static const trendingMovies ="$kbaseurl/trending/all/day?api_key=$apikey";
  static const searchmovie ='$kbaseurl/serach/movie/?api_key=$apikey&query=';
  static const upcoming ='$kbaseurl/movie/upcoming?api_key=$apikey&language=en-US&page=1';
  static const moviepopular ='$kbaseurl/movie/popular?api_key=$apikey&language=en-US&page=1';
  static const tvpopular ='$kbaseurl/tv/popular?api_key=$apikey&language=en-US&page=1';
  static const tvtoprate ='$kbaseurl/discover/tv?include_adult=false&language=en-US&page=1&sort_by=vote_average.desc&vote_count.gte=200&api_key=$apikey';

}