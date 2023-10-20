import 'package:flutter/widgets.dart';

class HomeScrollProvider extends ChangeNotifier{
  bool isScrolling = true;


  void setIsScrolling(bool value) {
    isScrolling = value;
    notifyListeners();
  }

}