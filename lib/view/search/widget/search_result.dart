import 'package:flutter/material.dart';
import 'package:prime_video/view/search/widget/title.dart';
 const imageURl =    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg";

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTItle(title: "Movies & TV"),
        const SizedBox(height: 10,),
        Expanded(child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing:8,
          childAspectRatio: 1/1.5,
          shrinkWrap: true,
          children: List.generate(20, (index) {
            return  const MainCard();
          },
          ),
          ))
      ],
    );
  }
}
class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:BoxDecoration(
        image: const DecorationImage(image: NetworkImage(imageURl),
        fit: BoxFit.contain),
        borderRadius: BorderRadius.circular(5)
      ),
    );
  }
}