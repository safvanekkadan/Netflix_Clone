import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:prime_video/controller/videoplayer_provider.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

class FastlaughVideoPlayer extends StatelessWidget {
  final String VideoUrl;
  const FastlaughVideoPlayer({super.key,
  required this.VideoUrl
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<VideoPlayerProvider>(
      builder: (context, valuevideoPlayerProvider, child) {
      return SizedBox(
        width: double.infinity,
        height: double.infinity,
        child:  valuevideoPlayerProvider.videoPlayerController.value.isInitialized
        ? AspectRatio(
           aspectRatio: valuevideoPlayerProvider.videoPlayerController.value.aspectRatio,
                    child: GestureDetector(
                        onTap: () {
                          
                            valuevideoPlayerProvider.videoPause();
                        
                        },
                        child: VideoPlayer(valuevideoPlayerProvider.videoPlayerController)))
                : const Center(
                    child: CircularProgressIndicator(),
         ),
      );
      }
    );
  }
}