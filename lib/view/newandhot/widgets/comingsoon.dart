import 'package:flutter/material.dart';
import 'package:prime_video/controller/newandhot_provider.dart';

import 'package:provider/provider.dart';

import 'coming_soo_info.dart';
class ComingSoonWidget extends StatefulWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  State<ComingSoonWidget> createState() => _ComingSoonWidgetState();
}

class _ComingSoonWidgetState extends State<ComingSoonWidget> {
  @override
  void initState() {
    
    super.initState();
   Provider.of<NewandHotProvider>(context,listen: false).fetchComingsoonMovies();
   // Provider.of<InternetConnectivityProvider>(context,listen: false).getInternetConnectivity(context);
  }
  @override
  Widget build(BuildContext context) {
     
    return Consumer<NewandHotProvider>(
      builder: (context, comingSoonProvider, child) {
        if (comingSoonProvider.isLoading) {
          return const Center(child: CircularProgressIndicator(),);
          
        }else if(comingSoonProvider.upcomingMovies.isEmpty){
          return const Text("No data available");
        }
        return ListView.builder(
            itemCount:comingSoonProvider.upcomingMovies.length,
            itemBuilder:(
              
              context, index) => ComingSoonInfoCard(movieInfo: comingSoonProvider.upcomingMovies[index],),);
      },
  
    );
  }
}

