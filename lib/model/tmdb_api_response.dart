import 'package:prime_video/model/movie_info_model.dart';

class TmdbApiResponseModel{
  List<MovieInfoModel> results =[];
  TmdbApiResponseModel.fromjson(Map data){
    results =(data["results"] as List)
    .map((item) =>MovieInfoModel.fromjson(item))
    .where((movieInfo) =>movieInfo!=null )
    .toList();
  }
  Map<String,dynamic>tojson(){
   final Map<String, dynamic> data = <String, dynamic>{};
    data['results']=results.map((MovieInfoModel movieInfo)=>movieInfo.tojson()).toList();
    return data;
  }
}