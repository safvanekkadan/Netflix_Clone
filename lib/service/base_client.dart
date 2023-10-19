import 'dart:convert';

import 'package:http/http.dart' as http;
Future<dynamic>apiCall(String url)async{
  http.Response response;
  response=await http.get(Uri.parse(url));
  if(response.statusCode==200){
    Map<String,dynamic>data=jsonDecode(response.body) as Map<String,dynamic>;
   


  }
}