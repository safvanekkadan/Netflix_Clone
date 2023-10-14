import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prime_video/view/search/widget/search_idle.dart';
import 'package:prime_video/view/search/widget/search_result.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: SafeArea(
          child: Padding(
           padding: const EdgeInsets.all(10.0),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
            CupertinoSearchTextField(
              backgroundColor:Colors.grey.withOpacity(0.4) ,
              prefixIcon: Icon(CupertinoIcons.search,
              color: Colors.grey,),
              suffixIcon: Icon(CupertinoIcons.xmark_circle_fill,
              color: Colors.grey,),
              style: TextStyle(
                color: Colors.white
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            
            Expanded(child: const SearchResultWidget()),
                 ],
               ),
         )),
    );
  }
}