import 'dart:async';
import 'MovieApiProvider.dart';
import 'package:flutter_learning/src/models/MovieItem.dart';


class Repository{
  final moviesProvider = MovieApiProvider();
  Future<MovieItem> fetchSuggestions() => moviesProvider.fetchMovieSuggestions();

}
