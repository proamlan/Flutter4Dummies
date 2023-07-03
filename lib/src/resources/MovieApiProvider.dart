import 'dart:async';
import 'dart:convert';

import 'package:flutter_learning/src/models/MovieItem.dart';
import 'package:flutter_learning/src/utils/Constants.dart';
import 'package:http/http.dart' show Client;
import 'package:logger/logger.dart';

class MovieApiProvider {
  Client client = Client();

  Future<MovieItem> fetchMovieSuggestions() async {
    var logger = Logger();
    logger.e("Entered Api calls");
    var uri = Uri.parse(
        "http://api.themoviedb.org/3/movie/popular?api_key=$TMDB_API_KEY");
    logger.e(uri);
    final response = await client.get(uri);
    logger.e("Got Response: ${response.body}");
    if (response.statusCode == 200) {
      return MovieItem.fromJson(json.decode(response.body));
    } else {
      throw Exception("Failed to load posts");
    }
  }
}
