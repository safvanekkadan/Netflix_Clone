import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prime_video/model/movie_info_model.dart';
import 'package:prime_video/service/apiendpoint.dart';
import 'package:prime_video/service/base_client.dart';
import '../view/search/search.dart';

class SearchResultServices {
  List<MovieInfoModel> searchResultMovies = [];

  Future fetchSearchResultMovies(BuildContext context, String apiQuery) async {
    try {
      final movies = await apiCall(ApiendPoint.searchmovie + apiQuery);
      searchResultMovies = movies.results;

      if (searchResultMovies.isEmpty) {
        // ignore: use_build_context_synchronously
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return CupertinoAlertDialog(
              title: const Text('No Results'),
              content: const Text('No movies were found for your search.'),
              actions: <Widget>[
                CupertinoDialogAction(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchScreen())); // Close the dialog
                  },
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );
      }
    } catch (error) {
      log("Error fetching trending movies: $error");
      // ignore: use_build_context_synchronously
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: const Text('Error'),
            content: const Text('An error occurred while fetching movies.'),
            actions: <Widget>[
              CupertinoDialogAction(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
    return searchResultMovies;
  }
}

