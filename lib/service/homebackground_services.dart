import 'package:prime_video/model/movie_info_model.dart';
import 'package:prime_video/service/apiendpoint.dart';
import 'package:prime_video/service/base_client.dart';

class HomeBackgroundCardServices{

  String? imageUrl;

  setImage()async{
    dynamic result =await apiCall(ApiendPoint.moviepopular);
    MovieInfoModel MovieInfo =result.results[3];

    imageUrl ='https://image.tmdb.org/t/p/w500${MovieInfo.posterpath}?api_key=1ea527c5454d817bc1ffa3293e9a4cc6';
    return imageUrl;
  }
}