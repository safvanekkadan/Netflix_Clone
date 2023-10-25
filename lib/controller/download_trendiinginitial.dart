import 'package:flutter/widgets.dart';
import 'package:prime_video/controller/internetconnectivity_provider.dart';
import 'package:prime_video/service/download_service.dart';
class TrandingMovieInitializeProvider extends ChangeNotifier {
List imagelist =[];
bool isLoading =true;

TrandingMovieInitializeProvider(){
  initializeImage();
  InternetConnectivityProvider;
}

void initializeImage()async{
  imagelist =await DownloadsServices().getTrendingMovies();
  isLoading=false;
  notifyListeners();
}

}
//https://api.themoviedb.org/3/trending/all/day?api_key=1ea527c5454d817bc1ffa3293e9a4cc6