import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../blocs/MovieSuggestionBloc.dart';
import '../models/MovieItem.dart';

class MovieList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bloc.fetchAllMovies();
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie Suggestions"),
      ),
      body:
      StreamBuilder(
        stream: bloc.allMovies,
        builder: (context, AsyncSnapshot<MovieItem> snapShot) {
          if (snapShot.hasData) {
            return buildList(snapShot);
          } else {
            return Text(snapShot.error.toString());
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  Widget buildList(AsyncSnapshot<MovieItem> snapShot) {
    return GridView.builder(
        itemCount: snapShot.data?.results.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            'https://image.tmdb.org/t/p/w185${snapShot.data?.results[index].posterPath}',
            fit: BoxFit.cover,
          );
        });
  }

  openDetailsPage(MovieItem? data, int index) {
    var logger = Logger();
    logger.e("Movie Item" + data.toString());
  }
}
