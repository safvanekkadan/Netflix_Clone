import 'package:flutter/widgets.dart';
import 'package:prime_video/service/homebackground_services.dart';

class HomeBackgroundCardImageProvider with ChangeNotifier {
  String? imageUrl;

  void initializeBackgroundCard()async{
    imageUrl=await HomeBackgroundCardServices().setImage();
    notifyListeners();
  }


  


}