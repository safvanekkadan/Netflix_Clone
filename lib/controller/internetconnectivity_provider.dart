import 'dart:async';
import 'dart:js';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import '../service/internetconnectivity.dart';

class InternetConnectivityProvider extends ChangeNotifier{
  late StreamSubscription subscription;
  var isDeviceConnected =false;
  bool isAlertSet= false;

  final  InternetConnectivityServices _connectivityServices=InternetConnectivityServices();
  
 InternetConnectivityProvider(){
  getInternetConnectivity(context as BuildContext);
  
 }
  Future getInternetConnectivity(BuildContext context)async{
    _connectivityServices.getConnectivity(context);
    isDeviceConnected=_connectivityServices.isDeviceConnected;
    isAlertSet=_connectivityServices.isAlertSet;
    subscription=_connectivityServices.subscription;
  }
  
    notifyListeners();
  
}