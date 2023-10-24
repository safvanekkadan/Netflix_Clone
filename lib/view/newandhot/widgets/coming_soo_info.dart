import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:prime_video/constants/colors.dart';
import 'package:prime_video/constants/constants.dart';
import 'package:prime_video/view/home/custom_bottom.dart';
import 'package:prime_video/view/widgets/video_widget.dart';
import '../../../model/movie_info_model.dart';
class ComingSoonInfoCard extends StatelessWidget {
  final MovieInfoModel movieInfo;
  const ComingSoonInfoCard({super.key, required this.movieInfo});

  @override
  Widget build(BuildContext context) {
    
    String imageUrl =  'https://image.tmdb.org/t/p/w500${movieInfo.posterpath}?api_key=1ea527c5454d817bc1ffa3293e9a4cc6';
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(fetchDate(movieInfo.releaseDate),
                  style: const TextStyle(fontSize: 16, color: kgreycolor)),
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 480,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              videoWidget(
                videoImage:imageUrl,
              ),
               const Row(
                children: [
                  Spacer(),
                  Row(
                    children: [
                      CustomBotton(
                        icon: Icons.add_alert_rounded,
                        title: "Remind me",
                        iconSize: 20,
                        textSize: 12,
                      ),
                      kHieght,
                      CustomBotton(
                        icon: Icons.info,
                        title: "Info",
                        iconSize: 20,
                        textSize: 12,
                      ),
                      kHieght
                    ],
                  ),
                ],
              ),
              kHieght,
              Text("Coming on ${fetchDay(movieInfo.releaseDate)}"),
              kHieght,
              Text(
                movieInfo.originalTitle ?? 'Empty Title',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kHieght,
              Expanded(
                child: Text(
                  movieInfo.overview??'Empty overview',
                  style: const TextStyle(color: kgreycolor),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  // String fetchDate(String date) {
  //   DateTime dateInFormat = DateTime.parse(date);
  //   final formatDate = (DateFormat.MMMMd().format(dateInFormat)).split(" ");

  //   return "${formatDate.first.substring(0, 3)} \n${formatDate.last}";
  // }

  // String fetchDay(String date) {
  //   DateTime dateInFormat = DateTime.parse(date);
  //   final dayName = DateFormat('EEEE').format(dateInFormat);
  //   return dayName;
  // }
  String fetchDate(String? date) {
  if (date == null) {
    return 'FEB\n23';
  }
  
  DateTime dateInFormat = DateTime.parse(date);
  final formatDate = (DateFormat.MMMMd().format(dateInFormat)).split(" ");

  return "${formatDate.first.substring(0, 3)} \n${formatDate.last}";
}

String fetchDay(String? date) {
  if (date == null) {
    return 'No release date';
  }
  
  DateTime dateInFormat = DateTime.parse(date);
  final dayName = DateFormat('EEEE').format(dateInFormat);
  return dayName;
}
}
