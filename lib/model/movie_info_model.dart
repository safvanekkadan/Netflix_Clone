class MovieInfoModel{
   String? posterpath;
   String? title;
   String?releaseDate;
   String?originalTitle;
   String?overview= "";
   bool?video;




   MovieInfoModel({
    required this.posterpath,
    required this.title,
    required this.releaseDate,
    required this.originalTitle,
    required this.overview,
    required this.video
   });

   MovieInfoModel.fromjson(Map data){
    posterpath=data['poster_path'];
    title=data['title'];
    releaseDate=data['releaseDate'];
    originalTitle=data['original_title'];
    overview=data['overview'];
   }


  Map<String,dynamic>tojson(){
    Map<String, dynamic> data =<String, dynamic>{};
    data["poster_path"]=posterpath;
    data['title']=title;
    data['release_date']=releaseDate;
    data['original_title']=originalTitle;
    data['overview']=overview;

  return data;

  }
}