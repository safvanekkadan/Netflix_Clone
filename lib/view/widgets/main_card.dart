import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class MainCard extends StatelessWidget {
  final String imageUrlFromApi;
  const MainCard({
    super.key,
    required this.imageUrlFromApi
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 150,
     decoration: BoxDecoration(
      borderRadius: kRadius10,
      image: DecorationImage(
         fit: BoxFit.cover,
        image: NetworkImage(imageUrlFromApi),
        ), 
     ),
    );
  }
}