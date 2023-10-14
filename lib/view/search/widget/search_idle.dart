import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prime_video/view/search/widget/title.dart';
 final imagelistidle =[
    "https://www.themoviedb.org/t/p/w533_and_h300_bestv2/dXvzWuo3qAxWFQib0IGOPH8hztW.jpg",

  ];
class SearchIdle extends StatelessWidget {
   const SearchIdle({super.key});
 

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTItle(title: "Top Searches"),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (ctx, index)=> const TopSearchItemTile(),
                separatorBuilder: (ctx,index)=>const SizedBox(
                  height: 20,
                ),
                itemCount: 10),
            )
      ],
    );
  }
}


class  TopSearchItemTile extends StatelessWidget {
  const  TopSearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth =MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width:screenwidth* 0.35,
          height: 80,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
            image: NetworkImage(imagelistidle[0]))
          ),
        ),
        const Expanded(child: Text("Movie Name",style: 
        TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold
        ),)),
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Icon(CupertinoIcons.play_circle,
          color: Colors.white,
          size: 50,),
        )
      ],
    );
  }
}