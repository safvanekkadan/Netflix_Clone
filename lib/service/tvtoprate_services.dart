import 'dart:developer';

import 'package:prime_video/service/apiendpoint.dart';
import 'package:prime_video/service/base_client.dart';

import '../model/movie_info_model.dart';

class TvTopRateServices{
  List<MovieInfoModel> tvtoprate = [];
  Future fetchTVTopRateMovies() async {
    try {
      final movies = await apiCall(ApiendPoint.tvtoprate);
      tvtoprate = movies.results;
    } catch (error) {
      // Handle the error here
      log('Error fetching trending movies: $error');
    }
    return tvtoprate;
  }
}