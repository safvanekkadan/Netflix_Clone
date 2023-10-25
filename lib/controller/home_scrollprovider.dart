import 'package:flutter/widgets.dart';
import 'package:prime_video/controller/internetconnectivity_provider.dart';
class HomeScrollProvider extends ChangeNotifier{
  bool isScrolling = true;

HomeScrollProvider(){
  InternetConnectivityProvider();
}
  void setIsScrolling(bool value) {
    isScrolling = value;
    notifyListeners();
  }

}