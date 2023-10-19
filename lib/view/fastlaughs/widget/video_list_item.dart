import 'package:flutter/material.dart';
import 'package:prime_video/controller/download_trendiinginitial.dart';
import 'package:provider/provider.dart';


final dummyVideoUrls = [
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/SubaruOutbackOnStreetAndDirt.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/VolkswagenGTIReview.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4"
];

class VideoListItem extends StatelessWidget {
  final  int index;
    const VideoListItem({
    super.key,
     required this.index });
  
  
  


  @override
  Widget build(BuildContext context) {
    return Consumer<TrandingMovieInitializeProvider>(
      builder: (context, value, child) {
        
      return Stack(
        children: [
          Container(
            color: Colors.accents[index % Colors.accents.length],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,  
            //left
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:10,vertical: 10),
                child: IconButton(onPressed: (){},
                 icon:Icon(Icons.volume_off_outlined,
                 size: 25,)),
              ),
            ///right
            Padding(
              padding: const EdgeInsets.symmetric(vertical:20,horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children:const  [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: 
                      NetworkImage("https://www.themoviedb.org/t/p/w300_and_h450_bestv2/8qBylBsQf4llkGrWR3qAsOtOU8O.jpg"),
                    ),
                  ),
                  SizedBox(height: 20,),
                  VideoActionWidget(icon: Icons.emoji_emotions_outlined, title:"LOL"),
                  SizedBox(height: 20,),
                  VideoActionWidget(icon: Icons.add, title:"My List"),
                  SizedBox(height: 20,),
                  VideoActionWidget(icon: Icons.share, title:"Share"),
                  SizedBox(height: 20),
                  VideoActionWidget(icon: Icons.play_arrow, title:"Play"),
                  SizedBox(height: 10)
                ],
              ),
            )
            ],
          )
        ],
      );
      }
    );
  }
}
class VideoActionWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionWidget({super.key,
  required this.icon,
  required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon,
        color: Colors.white,
        size: 30,),
        Text(title,style: TextStyle(
          color:Colors.white,
          fontSize: 16
        ),)
      ],
    );
  }
}