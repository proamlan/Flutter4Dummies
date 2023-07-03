import 'package:rxdart/rxdart.dart';

import '../models/MovieItem.dart';
import '../resources/Repository.dart';

class MovieSuggestionBloc {
  final _repository = Repository();
  final _movieFetcher = PublishSubject<MovieItem>();

  Stream<MovieItem> get allMovies => _movieFetcher.stream;

  fetchAllMovies() async {
    MovieItem movieItem = await _repository.fetchSuggestions();
    _movieFetcher.sink.add(movieItem);
  }

  dispose() {
    _movieFetcher.close();
  }
}

final bloc = MovieSuggestionBloc();
