import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:prime_video/controller/videoplayer_provider.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

// class FastlaughVideoPlayer extends StatefulWidget {
//   final String videoUrl;
//   const FastlaughVideoPlayer({super.key,
//   required this.videoUrl
//   });

//   @override
//   State<FastlaughVideoPlayer> createState() => _FastlaughVideoPlayerState();
// }

// class _FastlaughVideoPlayerState extends State<FastlaughVideoPlayer> {

//   @override
//   void initState() {
//     super.initState();
//     Provider.of<VideoPlayerProvider>(context,listen: false).videoPlayerState(videoUrl);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Consumer<VideoPlayerProvider>(
//       builder: (context, valuevideoPlayerProvider, child) {
//       return SizedBox(
//         width: double.infinity,
//         height: double.infinity,
//         child:  valuevideoPlayerProvider.videoPlayerController.value.isInitialized
//         ? AspectRatio(
//            aspectRatio: valuevideoPlayerProvider.videoPlayerController.value.aspectRatio,
//                     child: GestureDetector(
//                         onTap: () {
                          
//                             valuevideoPlayerProvider.videoPause();
                        
//                         },
//                         child: VideoPlayer(valuevideoPlayerProvider.videoPlayerController)))
//                 : const Center(
//                     child: CircularProgressIndicator(),
//          ),
//       );
//       }
//     );
//   }
// }
class FastLaughVideoPlayer extends StatefulWidget {
  final String videoUrl;
  const FastLaughVideoPlayer(
      {super.key, required this.videoUrl,
       });

  @override
  State<FastLaughVideoPlayer> createState() => _FastLaughVideoPlayerState();
}

class _FastLaughVideoPlayerState extends State<FastLaughVideoPlayer> {
 
  

  @override
  void initState() {
    super.initState();
    Provider.of<VideoPlayerProvider>(context,listen: false).videoPlayerState(widget.videoUrl);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<VideoPlayerProvider>(
      builder: (context, videoPlayerProvider, child) {
        return  SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: videoPlayerProvider.videoPlayerController.value.isInitialized
              ? AspectRatio(
                  aspectRatio: videoPlayerProvider.videoPlayerController.value.aspectRatio,
                  child: GestureDetector(
                      onTap: () {
                        
                          videoPlayerProvider.videoPause();
                      
                      },
                      child: VideoPlayer(videoPlayerProvider.videoPlayerController)))
              : const Center(
                  child: CircularProgressIndicator(),
                )
                );
      },
      
    );
       
      
  }
 
}