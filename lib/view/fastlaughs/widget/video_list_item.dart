import 'package:flutter/material.dart';
import 'package:prime_video/controller/download_trendiinginitial.dart';
import 'package:prime_video/controller/internetconnectivity_provider.dart';
import 'package:prime_video/view/fastlaughs/widget/fast_laugth_video.dart';
import 'package:provider/provider.dart';


final dummyVideoUrls = [
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/SubaruOutbackOnStreetAndDirt.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/VolkswagenGTIReview.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4"
];

class VideoListItem extends StatefulWidget {
  final  int index;
    const VideoListItem({
    super.key,
     required this.index });

  @override
  State<VideoListItem> createState() => _VideoListItemState();
}

class _VideoListItemState extends State<VideoListItem> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<TrandingMovieInitializeProvider>(context,listen: false).initializeImage();
    Provider.of<InternetConnectivityProvider>(context,listen: false).getInternetConnectivity(context);
  }
  @override
  Widget build(BuildContext context) {
    final videoUrl=dummyVideoUrls[widget.index % dummyVideoUrls.length];
    return Consumer<TrandingMovieInitializeProvider>(
      builder: (context, value, child) {
        if(value.isLoading){
          return const Center(
            child:CircularProgressIndicator(),
          );
        }
      return Stack(
        children: [
          FastLaughVideoPlayer(
            videoUrl: videoUrl,
          
          ),
          // Container(
          //   color: Colors.accents[widget.index % Colors.accents.length],
          // ),
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
                children:  [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: 
                      NetworkImage(
                        value.imagelist[widget.index],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const VideoActionWidget(icon: Icons.emoji_emotions_outlined, title:"LOL"),
                  const SizedBox(height: 20,),
                  const VideoActionWidget(icon: Icons.add, title:"My List"),
                  const SizedBox(height: 20,),
                  const VideoActionWidget(icon: Icons.share, title:"Share"),
                  const SizedBox(height: 20),
                  const VideoActionWidget(icon: Icons.play_arrow, title:"Play"),
                  const SizedBox(height: 10)
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